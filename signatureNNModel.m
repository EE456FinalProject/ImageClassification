clear;
clc;
close all;

%_______________________________________
file_paths = {'processed_matrices\signatures\Brian\signatureData.mat', 
    'processed_matrices\signatures\John\signatureData.mat', 
    'processed_matrices\signatures\JohnKorean\signatureData.mat'};

% Initialize the AllData matrix
AllData = zeros(60, 27648);

% Loop through each MAT file
for file_index = 1:length(file_paths)
    % Load the MAT file
    loaded_data = load(file_paths{file_index});

    % Assuming the variable name is 'signatureData'
    % Adjust this according to your actual variable name
    signatureData = loaded_data.signatureData;

    % Place the data into AllData
    start_row = (file_index - 1) * 20 + 1;
    end_row = file_index * 20;
    AllData(start_row:end_row, :) = signatureData;
end

disp(size(AllData));