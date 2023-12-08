clear;
clc;
close all;

% Load the trained network
load('trained_network2.mat', 'net2');

% Load and preprocess your new test data
newTestData  = load('processed_matrices\signatures\Brian\Brian’s Signature-12_processed.mat'); 

fieldNames = fieldnames(newTestData);

% Assuming there is only one field, access the matrix
if numel(fieldNames) == 1
    % Access the matrix using the field name
    newTestImages = newTestData.(fieldNames{1});

    % If needed, convert to double or perform other preprocessing
    newTestImages = double(newTestImages);

    % ... (other preprocessing steps)
else
    error('Unexpected structure in the loaded data.');
end
newTestImages = reshape(newTestImages, [1 1 27648]);

% Classify the new test data
predictedLabels = classify(net2, newTestImages);

disp(predictedLabels);
