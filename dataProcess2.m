clear;
clc;
close all;

% This script is used to populate the dataset for both solution one and
% solution two

% We will split the data into these parts
% 80% Training
% 10% Validating
% 10% Testing

trainingRatio = 0.8;
validatingRatio = 0.1;
testingRatio = 0.1;

% labels and vectors for the NN ------------------------------------
trainData1_1 = [];
trainLabel1_1 = [];

validData1_1 = [];
validLabel1_1 = [];

testData1_1 = [];
testLabel1_1 = [];

labels_class = [];
darkness_vectors_class = [];

data_folder_Brian = "data/signatures/Brian/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Brian, 12);

% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);

trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);

validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);

testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_Chen_Kuan = "data/signatures/Chen-Kuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Chen_Kuan, 13);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_John = "data/signatures/John/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_John, 14);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_JohnKorean = "data/signatures/JohnKorean/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_JohnKorean, 15);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_Emily = "data/signatures/Emily/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Emily, 16);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_Yu_Syuan = "data/signatures/Yu-Syuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Yu_Syuan, 17);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_0 = "data/numbers/0/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_0, 0);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_1 = "data/numbers/1/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_1, 1);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_2 = "data/numbers/2/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_2, 2);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_3 = "data/numbers/3/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_3, 3);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_4 = "data/numbers/4/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_4, 4);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_5 = "data/numbers/5/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_5, 5);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_6 = "data/numbers/6/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_6, 6);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_7 = "data/numbers/7/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_7, 7);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_8 = "data/numbers/8/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_8, 8);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

data_folder_9 = "data/numbers/9/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_9, 9);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1_1 = vertcat(trainData1_1, tempTrainData);
trainLabel1_1 = vertcat(trainLabel1_1, tempTrainLabel);
validData1_1 = vertcat(validData1_1, tempValidData);
validLabel1_1 = vertcat(validLabel1_1, tempValidLabel);
testData1_1 = vertcat(testData1_1, tempTestData);
testLabel1_1 = vertcat(testLabel1_1, tempTestLabel);

% Shuffle Training and Validation Sets
rng('default');
shuffledIndices = randperm(size(trainData1_1, 1));
trainData1_1 = trainData1_1(shuffledIndices, :);
trainLabel1_1 = trainLabel1_1(shuffledIndices, :);
shuffledIndices = randperm(size(validData1_1, 1));
validData1_1 = validData1_1(shuffledIndices, :);
validLabel1_1 = validLabel1_1(shuffledIndices, :);
% Save testing dataset1
save('trainData1_1.mat', 'trainData1_1');
save('trainLabel1_1.mat', 'trainLabel1_1');
save('validData1_1.mat', 'validData1_1');
save('validLabel1_1.mat', 'validLabel1_1');
save('testData1_1.mat', 'testData1_1');
save('testLabel1_1.mat', 'testLabel1_1');