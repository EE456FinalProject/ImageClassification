clear;
clc;
close all;

%_______________________________________
file_paths = {'processed_matrices\signatures\Brian\signatureData.mat', 
    'processed_matrices\signatures\John\signatureData.mat', 
    'processed_matrices\signatures\JohnKorean\signatureData.mat'};

% Initialize the matrices for training, validation, and testing
trainData = zeros(48, 27648);  
trainLabel = zeros(48, 1);
validData = zeros(6, 27648);  
validLabel = zeros(6, 1);
testData = zeros(6, 27648); 
testLabel = zeros(6, 1);

% Loop through each MAT file
for file_index = 1:length(file_paths)
    % Load the MAT file
    loaded_data = load(file_paths{file_index});

    % Adjust this according to your actual variable name
    signatureData = loaded_data.signatureData;

    start_row_train = (file_index - 1) * 16 + 1;
    end_row_train = file_index * 16;

    start_row_valid = (file_index - 1) * 2 + 1;
    end_row_valid = file_index * 2;

    start_row_test = (file_index - 1) * 2 + 1;
    end_row_test = file_index * 2;

    % Training set
    trainData(start_row_train:end_row_train, :) = signatureData(1:16, :);
    trainLabel(start_row_train:end_row_train, :) = file_index;

    % Validation set
    validData(start_row_valid:end_row_valid, :) = signatureData(17:18, :);
    validLabel(start_row_valid:end_row_valid, :) = file_index;

    % Testing set
    testData(start_row_test:end_row_test, :) = signatureData(19:20, :);
    testLabel(start_row_test:end_row_test, :) = file_index;
end

% Shuffle the training data
num_samples_train = size(trainData, 1);
shuffled_indices_train = randperm(num_samples_train);

trainData = trainData(shuffled_indices_train, :);
trainLabel = trainLabel(shuffled_indices_train, :);

% Shuffle the validation data
num_samples_valid = size(validData, 1);
shuffled_indices_valid = randperm(num_samples_valid);

validData = validData(shuffled_indices_valid, :);
validLabel = validLabel(shuffled_indices_valid, :);

% Shuffle the testing data
num_samples_test = size(testData, 1);
shuffled_indices_test = randperm(num_samples_test);

testData = testData(shuffled_indices_test, :);
testLabel = testLabel(shuffled_indices_test, :);

%____________________________________________________________
% Start Training network

trainImages = trainData';
trainLabels = categorical(trainLabel);

validationImages = validData';
validationLabels = categorical(validLabel);

testImages = testData';
testLabels = categorical(testLabel);

% Reshape the data
imageSize = [1, 1, 27648]; % Update this based on your actual input size

trainImages = reshape(trainImages, [imageSize, numel(trainLabels)]);
validationImages = reshape(validationImages, [imageSize, numel(validationLabels)]);
testImages = reshape(testImages, [imageSize, numel(testLabels)]);

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

    fullyConnectedLayer(3)
    softmaxLayer
    classificationLayer
];

% Specify training options
options = trainingOptions('sgdm', ...
    'MaxEpochs', 10, ... % Update the number of epochs
    'MiniBatchSize', 8, ... % Update the mini-batch size
    'ValidationData', {validationImages, validationLabels}, ...
    'ValidationFrequency', 8, ...
    'Plots', 'training-progress', ...
    'Verbose', true, ...
    'L2Regularization', 0.01); % Add weight regularization

% Train the CNN
net2 = trainNetwork(trainImages, trainLabels, layers, options);
% Evaluate on the test set
predictedLabels = classify(net2, testImages);
accuracy = sum(predictedLabels == testLabels) / numel(testLabels);
fprintf('Accuracy on the test set: %.2f%%\n', accuracy * 100);

% Save the trained network to a file
save('trained_network2.mat', 'net2');

