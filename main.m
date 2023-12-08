clear;
clc;
close all;

data_folder = "data/signatures/Brian/";
output_folder = "processed_matrices/signatures/Brian";
% getting the jpg images and turn them into vectors
imageToMat(data_folder, output_folder);
% creating a mat file that has the labels and the corresponding labels
[labels, darkness_vectors] = addingLabels(data_folder, 12);

