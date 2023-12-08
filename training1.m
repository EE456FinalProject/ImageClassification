clear;
clc;
close all;

% This main script is used to train and test solution one 
% solution one creates three NNs
% 1. predicts if the input is within the number class or the signature class
% 2. predicts the number
% 3. predicts the signature

% labels and vectors for the first NN ------------------------------------
labels_class = [];
darkness_vectors_class = [];

data_folder_Brian = "data/signatures/Brian/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Brian, 10);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_Chen_Kuan = "data/signatures/Chen-Kuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Chen_Kuan, 10);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_John = "data/signatures/John/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_John, 10);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_JohnKorean = "data/signatures/JohnKorean/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_JohnKorean, 10);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_Emily = "data/signatures/Emily/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Emily, 10);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_Yu_Syuan = "data/signatures/Yu-Syuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Yu_Syuan, 10);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_0 = "data/numbers/0/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_0, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_1 = "data/numbers/1/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_1, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_2 = "data/numbers/2/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_2, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_3 = "data/numbers/3/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_3, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_4 = "data/numbers/4/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_4, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_5 = "data/numbers/5/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_5, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_6 = "data/numbers/6/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_6, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_7 = "data/numbers/7/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_7, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_8 = "data/numbers/8/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_8, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

data_folder_9 = "data/numbers/9/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_9, 11);
% concatenating the labels and the vectors
labels_class = vertcat(labels_class, temp_labels);
darkness_vectors_class = vertcat(darkness_vectors_class, temp_darkness_vectors);

% labels and vectors for the second NN ------------------------------------
labels_number = [];
darkness_vectors_number = [];

data_folder_0 = "data/numbers/0/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_0, 0);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_1 = "data/numbers/1/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_1, 1);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_2 = "data/numbers/2/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_2, 2);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_3 = "data/numbers/3/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_3, 3);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_4 = "data/numbers/4/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_4, 4);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_5 = "data/numbers/5/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_5, 5);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_6 = "data/numbers/6/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_6, 6);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_7 = "data/numbers/7/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_7, 7);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_8 = "data/numbers/8/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_8, 8);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

data_folder_9 = "data/numbers/9/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_9, 9);
% concatenating the labels and the vectors
labels_number = vertcat(labels_number, temp_labels);
darkness_vectors_number = vertcat(darkness_vectors_number, temp_darkness_vectors);

% labels and vectors for the third NN ------------------------------------
labels_signature = [];
darkness_vectors_signature = [];

data_folder_Brian = "data/signatures/Brian/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Brian, 12);
% concatenating the labels and the vectors
labels_signature = vertcat(labels_signature, temp_labels);
darkness_vectors_signature = vertcat(darkness_vectors_signature, temp_darkness_vectors);

data_folder_Chen_Kuan = "data/signatures/Chen-Kuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Chen_Kuan, 13);
% concatenating the labels and the vectors
labels_signature = vertcat(labels_signature, temp_labels);
darkness_vectors_signature = vertcat(darkness_vectors_signature, temp_darkness_vectors);

data_folder_John = "data/signatures/John/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_John, 14);
% concatenating the labels and the vectors
labels_signature = vertcat(labels_signature, temp_labels);
darkness_vectors_signature = vertcat(darkness_vectors_signature, temp_darkness_vectors);

data_folder_JohnKorean = "data/signatures/JohnKorean/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_JohnKorean, 15);
% concatenating the labels and the vectors
labels_signature = vertcat(labels_signature, temp_labels);
darkness_vectors_signature = vertcat(darkness_vectors_signature, temp_darkness_vectors);

data_folder_Emily = "data/signatures/Emily/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Emily, 16);
% concatenating the labels and the vectors
labels_signature = vertcat(labels_signature, temp_labels);
darkness_vectors_signature = vertcat(darkness_vectors_signature, temp_darkness_vectors);

data_folder_Yu_Syuan = "data/signatures/Yu-Syuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Yu_Syuan, 17);
% concatenating the labels and the vectors
labels_signature = vertcat(labels_signature, temp_labels);
darkness_vectors_signature = vertcat(darkness_vectors_signature, temp_darkness_vectors);

% seperate into train/val/test

% train NN1

% train NN2 

% train NN3

% export (save) the three NNs



