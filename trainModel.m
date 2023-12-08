function net = trainModel(trainData, trainLabel, validData, validLabel, testData, testLabel, imageSize, numEpochs, miniBatchSize, numberClasses)
    % Reshape the data
    trainImages = reshape(trainData', [imageSize, numel(trainLabel)]);
    validationImages = reshape(validData', [imageSize, numel(validLabel)]);
    testImages = reshape(testData', [imageSize, numel(testLabel)]);

    trainLabels = categorical(trainLabel);
    validationLabels = categorical(validLabel);
    testLabels = categorical(testLabel);

    % Define the CNN architecture
    layers = [
        % input layer
        imageInputLayer(imageSize)

        % layer 1
        convolution2dLayer(3, 32, 'Padding', 'same')
        batchNormalizationLayer
        reluLayer
        dropoutLayer(0.2) 

        maxPooling2dLayer(2, 'Stride', 2, 'Padding', 'same')

        % layer 2
        convolution2dLayer(3, 64, 'Padding', 'same')
        batchNormalizationLayer
        reluLayer
        dropoutLayer(0.2)

        maxPooling2dLayer(2, 'Stride', 2, 'Padding', 'same')

        % layer 3
        convolution2dLayer(3, 128, 'Padding', 'same')
        batchNormalizationLayer
        reluLayer
        dropoutLayer(0.2)

        maxPooling2dLayer(2, 'Stride', 2, 'Padding', 'same')

        fullyConnectedLayer(numberClasses)
        softmaxLayer
        classificationLayer
    ];

    % Specify training options
    options = trainingOptions('sgdm', ...
        'MaxEpochs', numEpochs, ...
        'MiniBatchSize', miniBatchSize, ...
        'ValidationData', {validationImages, validationLabels}, ...
        'ValidationFrequency', 10, ...
        'Plots', 'training-progress', ...
        'Verbose', true, ...
        'L2Regularization', 0.01); % Add weight regularization

    % Train the CNN
    net = trainNetwork(trainImages, trainLabels, layers, options);

    % Evaluate on the test set
    predictedLabels = classify(net, testImages);
    accuracy = sum(predictedLabels == testLabels) / numel(testLabels);
    fprintf('Accuracy on the test set: %.2f%%\n', accuracy * 100);
end