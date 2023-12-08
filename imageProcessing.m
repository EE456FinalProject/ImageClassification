clear;
clc;
close all;

% Define the path to the data folder
data_folder = 'data/signatures/Brian/';
output_folder = 'processed_matrices/signatures/Brian';

% Create the output folder if it doesn't exist
if ~exist(output_folder, 'dir')
    mkdir(output_folder);
end

% Get a list of all jpg files in the data folder
jpg_files = dir(fullfile(data_folder, '*.jpg'));

% Initialize the signatureData matrix
signatureData = zeros(length(jpg_files), 192 * 144);

% Iterate over each image
for i = 1:length(jpg_files)
    % Read the current JPG image
    current_image = imread(fullfile(data_folder, jpg_files(i).name));

    % Resize the image to 144x192
    resized_image = imresize(current_image, [144, 192]);

    % Convert the resized image to grayscale
    gray_image = rgb2gray(resized_image);

    % Create a matrix where values range from 0 to 1 based on darkness
    darkness_matrix = double(gray_image) / 255;

    % Reshape the darkness matrix to a row vector
    darkness_vector = reshape(darkness_matrix, 1, []);

    % Store the darkness vector in signatureData
    signatureData(i, :) = darkness_vector;

    % Display the original, resized, and darkness matrices
    % figure;
    % subplot(1,3,1), imshow(current_image), title('Original Image');
    % subplot(1,3,2), imshow(resized_image), title('Resized Image');
    % subplot(1,3,3), imshow(darkness_matrix, [0, 1]), title('Darkness Matrix');

    % Define the output file name
    [~, base_name, ~] = fileparts(jpg_files(i).name);
    output_file = fullfile(output_folder, [base_name '_processed.mat']);

    % Save the darkness vector (row-major order)
    save(output_file, 'darkness_vector');
end

% Save the signatureData matrix
save(fullfile(output_folder, 'signatureData.mat'), 'signatureData');
