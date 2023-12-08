clear;
clc;
close all;

function [trainData, trainLabel, validData, validLabel, testData, testLabel] = processImageData(imageData)
    % Initialize the matrices for training, validation, and testing
    trainData = [];
    trainLabel = [];
    validData = [];
    validLabel = [];
    testData = [];
    testLabel = [];

    % Calculate the number of samples for each split
    num_samples = size(imageData, 1);
    num_train = round(0.8 * num_samples);
    num_valid = round(0.1 * num_samples);

    % Randomly shuffle the data
    shuffled_indices = randperm(num_samples);
    shuffled_data = imageData(shuffled_indices, :);

    % Training set
    trainData = shuffled_data(1:num_train, 1:end-1); % Excluding the last column (label)
    trainLabel = shuffled_data(1:num_train, end);

    % Validation set
    validData = shuffled_data(num_train+1:num_train+num_valid, 1:end-1);
    validLabel = shuffled_data(num_train+1:num_train+num_valid, end);

    % Testing set
    testData = shuffled_data(num_train+num_valid+1:end, 1:end-1);
    testLabel = shuffled_data(num_train+num_valid+1:end, end);
end
