clear;
clc;
close all;

function [trainData, trainLabel, validData, validLabel, testData, testLabel] = processImageData(darkness_matrices, labels)
    % Combine darkness_matrices and labels into a single matrix
    imageData = [darkness_matrices, labels];

    % Initialize the matrices for training, validation, and testing
    trainData = [];
    trainLabel = [];
    validData = [];
    validLabel = [];
    testData = [];
    testLabel = [];

    % Calculate the number of samples for each split
    numSamples = size(imageData, 1);
    numTrain = round(0.8 * numSamples);
    numValid = round(0.1 * numSamples);

    % Randomly shuffle the data
    shuffledIndices = randperm(numSamples);
    shuffledData = imageData(shuffledIndices, :);

    % Training set
    trainData = shuffledData(1:numTrain, 1:end-1);
    trainLabel = shuffledData(1:numTrain, end);

    % Validation set
    validData = shuffledData(numTrain+1:numTrain+numValid, 1:end-1);
    validLabel = shuffledData(numTrain+1:numTrain+numValid, end);

    % Testing set
    testData = shuffledData(numTrain+numValid+1:end, 1:end-1);
    testLabel = shuffledData(numTrain+numValid+1:end, end);
end

