clear;
clc;
close all;


% Define the path to the folder with processed images
processed_folder = 'processed_matrices/JohnKorean';

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
    loaded_data.metadata = '2';
    
    % Save the processed image data and metadata back to the same file
    save(file_path, '-struct', 'loaded_data');
end
