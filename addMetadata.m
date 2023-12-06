clear;
clc;
close all;

% Fix Does not work with new 20x27648
% Define the path to the folder with processed images
processed_folder = 'processed_matrices/signatures/Brian';

% Get a list of all processed MAT files in the folder
mat_files = dir(fullfile(processed_folder, '*.mat'));

% Iterate over each processed image
for i = 1:length(mat_files)
    % Load the processed image data
    file_path = fullfile(processed_folder, mat_files(i).name);
    loaded_data = load(file_path);
    
    % Extract the processed image matrix
    processed_matrix = loaded_data.darkness_matrix;
    
    % Add metadata (string "0") to the loaded_data structure
    loaded_data.metadata = '3';
    
    % Save the processed image data and metadata back to the same file
    save(file_path, '-struct', 'loaded_data');
end
