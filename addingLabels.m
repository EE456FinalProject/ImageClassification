function [labels, darkness_vectors] = addingLabels(data_folder, input_integer)
    % Get a list of all JPG files in the folder
    jpg_files = dir(fullfile(data_folder, '*.jpg'));

    % Initialize matrices
    labels = zeros(length(jpg_files), 1);
    darkness_vectors = zeros(length(jpg_files), 192 * 144);

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

        % Store the input_integer in output_matrix_1
        labels(i) = input_integer;

        % Store the darkness vector in output_matrix_2
        darkness_vectors(i, :) = darkness_vector;
    end
end

