clear;
clc;
close all;

%_______________________________________
file_paths = {'processed_matrices\signatures\Brian\signatureData.mat', 
    'processed_matrices\signatures\John\signatureData.mat', 
    'processed_matrices\signatures\JohnKorean\signatureData.mat'};

% Initialize the matrices for training, validation, and testing
TrainData = zeros(48, 27648);  
TrainLabel = zeros(48, 1);
ValidData = zeros(6, 27648);  
ValidLabel = zeros(6, 1);
TestData = zeros(6, 27648); 
TestLabel = zeros(6, 1);

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
    TrainData(start_row_train:end_row_train, :) = signatureData(1:16, :);
    TrainLabel(start_row_train:end_row_train, :) = file_index;

    % Validation set
    ValidData(start_row_valid:end_row_valid, :) = signatureData(17:18, :);
    ValidLabel(start_row_valid:end_row_valid, :) = file_index;

    % Testing set
    TestData(start_row_test:end_row_test, :) = signatureData(19:20, :);
    TestLabel(start_row_test:end_row_test, :) = file_index;
end

% Shuffle the training data
num_samples_train = size(TrainData, 1);
shuffled_indices_train = randperm(num_samples_train);

TrainData = TrainData(shuffled_indices_train, :);
TrainLabel = TrainLabel(shuffled_indices_train, :);

% Shuffle the validation data
num_samples_valid = size(ValidData, 1);
shuffled_indices_valid = randperm(num_samples_valid);

ValidData = ValidData(shuffled_indices_valid, :);
ValidLabel = ValidLabel(shuffled_indices_valid, :);

% Shuffle the testing data
num_samples_test = size(TestData, 1);
shuffled_indices_test = randperm(num_samples_test);

TestData = TestData(shuffled_indices_test, :);
TestLabel = TestLabel(shuffled_indices_test, :);

%____________________________________________________________
% Start Training network
