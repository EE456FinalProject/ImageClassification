function [trainData, trainLabel, validData, validLabel, testData, testLabel] = splitData(labels, darkness_matrices, trainingRatio, validatingRatio, testingRatio)
    % Calculate the number of samples for training, validation, and testing
    numSamples = size(labels, 1);
    numTrainingSamples = round(trainingRatio * numSamples);
    numValidatingSamples = round(validatingRatio * numSamples);
    numTestingSamples = round(testingRatio * numSamples);

    % Shuffle the data and labels together
    % rng('shuffle');
    % shuffledIndices = randperm(numSamples);
    % darkness_matrices = darkness_matrices(shuffledIndices, :);
    % labels = labels(shuffledIndices);

    % Divide the data into training, validation, and testing sets
    trainData = darkness_matrices(1:numTrainingSamples, :);
    trainLabel = labels(1:numTrainingSamples);

    validData = darkness_matrices(numTrainingSamples + 1:numTrainingSamples + numValidatingSamples, :);
    validLabel = labels(numTrainingSamples + 1:numTrainingSamples + numValidatingSamples);

    testData = darkness_matrices(numTrainingSamples + numValidatingSamples + 1:end, :);
    testLabel = labels(numTrainingSamples + numValidatingSamples + 1:end);
end
