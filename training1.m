clear;
clc;
close all;

% This main script is used to train and test solution one 
% solution one creates three NNs
% 1. predicts if the input is within the number class or the signature class
% 2. predicts the number
% 3. predicts the signature

% We will split the data into these parts
% 80% Training
% 10% Validating
% 10% Testing

trainingRatio = 0.8;
validatingRatio = 0.1;
testingRatio = 0.1;


% labels and vectors for the first NN ------------------------------------
trainData1 = [];
trainLabel1 = [];

validData1 = [];
validLabel1 = [];

testData1 = [];
testLabel1 = [];

labels_class = [];
darkness_vectors_class = [];

data_folder_Brian = "data/signatures/Brian/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Brian, 10);

% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);

trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);

validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);

testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_Chen_Kuan = "data/signatures/Chen-Kuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Chen_Kuan, 10);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_John = "data/signatures/John/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_John, 10);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_JohnKorean = "data/signatures/JohnKorean/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_JohnKorean, 10);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_Emily = "data/signatures/Emily/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Emily, 10);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_Yu_Syuan = "data/signatures/Yu-Syuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Yu_Syuan, 10);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_0 = "data/numbers/0/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_0, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_1 = "data/numbers/1/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_1, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_2 = "data/numbers/2/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_2, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_3 = "data/numbers/3/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_3, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_4 = "data/numbers/4/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_4, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_5 = "data/numbers/5/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_5, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_6 = "data/numbers/6/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_6, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_7 = "data/numbers/7/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_7, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_8 = "data/numbers/8/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_8, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

data_folder_9 = "data/numbers/9/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_9, 11);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData1 = vertcat(trainData1, tempTrainData);
trainLabel1 = vertcat(trainLabel1, tempTrainLabel);
validData1 = vertcat(validData1, tempValidData);
validLabel1 = vertcat(validLabel1, tempValidLabel);
testData1 = vertcat(testData1, tempTestData);
testLabel1 = vertcat(testLabel1, tempTestLabel);

% labels and vectors for the second NN ------------------------------------
trainData2 = [];
trainLabel2 = [];
validData2 = [];
validLabel2 = [];
testData2 = [];
testLabel2 = [];

labels_number = [];
darkness_vectors_number = [];

data_folder_0 = "data/numbers/0/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_0, 0);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_1 = "data/numbers/1/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_1, 1);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_2 = "data/numbers/2/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_2, 2);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_3 = "data/numbers/3/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_3, 3);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_4 = "data/numbers/4/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_4, 4);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_5 = "data/numbers/5/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_5, 5);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_6 = "data/numbers/6/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_6, 6);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_7 = "data/numbers/7/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_7, 7);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_8 = "data/numbers/8/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_8, 8);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

data_folder_9 = "data/numbers/9/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_9, 9);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData2 = vertcat(trainData2, tempTrainData);
trainLabel2 = vertcat(trainLabel2, tempTrainLabel);
validData2 = vertcat(validData2, tempValidData);
validLabel2 = vertcat(validLabel2, tempValidLabel);
testData2 = vertcat(testData2, tempTestData);
testLabel2 = vertcat(testLabel2, tempTestLabel);

% labels and vectors for the third NN ------------------------------------
trainData3 = [];
trainLabel3 = [];
validData3 = [];
validLabel3 = [];
testData3 = [];
testLabel3 = [];

labels_signature = [];
darkness_vectors_signature = [];

data_folder_Brian = "data/signatures/Brian/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Brian, 12);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData3 = vertcat(trainData3, tempTrainData);
trainLabel3 = vertcat(trainLabel3, tempTrainLabel);
validData3 = vertcat(validData3, tempValidData);
validLabel3 = vertcat(validLabel3, tempValidLabel);
testData3 = vertcat(testData3, tempTestData);
testLabel3 = vertcat(testLabel3, tempTestLabel);

data_folder_Chen_Kuan = "data/signatures/Chen-Kuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Chen_Kuan, 13);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData3 = vertcat(trainData3, tempTrainData);
trainLabel3 = vertcat(trainLabel3, tempTrainLabel);
validData3 = vertcat(validData3, tempValidData);
validLabel3 = vertcat(validLabel3, tempValidLabel);
testData3 = vertcat(testData3, tempTestData);
testLabel3 = vertcat(testLabel3, tempTestLabel);

data_folder_John = "data/signatures/John/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_John, 14);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData3 = vertcat(trainData3, tempTrainData);
trainLabel3 = vertcat(trainLabel3, tempTrainLabel);
validData3 = vertcat(validData3, tempValidData);
validLabel3 = vertcat(validLabel3, tempValidLabel);
testData3 = vertcat(testData3, tempTestData);
testLabel3 = vertcat(testLabel3, tempTestLabel);

data_folder_JohnKorean = "data/signatures/JohnKorean/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_JohnKorean, 15);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData3 = vertcat(trainData3, tempTrainData);
trainLabel3 = vertcat(trainLabel3, tempTrainLabel);
validData3 = vertcat(validData3, tempValidData);
validLabel3 = vertcat(validLabel3, tempValidLabel);
testData3 = vertcat(testData3, tempTestData);
testLabel3 = vertcat(testLabel3, tempTestLabel);

data_folder_Emily = "data/signatures/Emily/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Emily, 16);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData3 = vertcat(trainData3, tempTrainData);
trainLabel3 = vertcat(trainLabel3, tempTrainLabel);
validData3 = vertcat(validData3, tempValidData);
validLabel3 = vertcat(validLabel3, tempValidLabel);
testData3 = vertcat(testData3, tempTestData);
testLabel3 = vertcat(testLabel3, tempTestLabel);

data_folder_Yu_Syuan = "data/signatures/Yu-Syuan/";
[temp_labels, temp_darkness_vectors] = addingLabels(data_folder_Yu_Syuan, 17);
% Split the data
[tempTrainData, tempTrainLabel, tempValidData, tempValidLabel, tempTestData, tempTestLabel] = splitData(temp_labels, temp_darkness_vectors, trainingRatio, validatingRatio, testingRatio);
trainData3 = vertcat(trainData3, tempTrainData);
trainLabel3 = vertcat(trainLabel3, tempTrainLabel);
validData3 = vertcat(validData3, tempValidData);
validLabel3 = vertcat(validLabel3, tempValidLabel);
testData3 = vertcat(testData3, tempTestData);
testLabel3 = vertcat(testLabel3, tempTestLabel);

% Shuffle Training and Validation Sets
rng('shuffle');
shuffledIndices = randperm(size(trainData1, 1));
trainData1 = trainData1(shuffledIndices, :);
trainLabel1 = trainLabel1(shuffledIndices, :);

shuffledIndices = randperm(size(validData1, 1));
validData1 = validData1(shuffledIndices, :);
validLabel1 = validLabel1(shuffledIndices, :);

% Shuffle 2
shuffledIndices = randperm(size(trainData2, 1));
trainData2 = trainData2(shuffledIndices, :);
trainLabel2 = trainLabel2(shuffledIndices, :);

shuffledIndices = randperm(size(validData2, 1));
validData2 = validData2(shuffledIndices, :);
validLabel2 = validLabel2(shuffledIndices, :);

% Shuffle 3
shuffledIndices = randperm(size(trainData3, 1));
trainData3 = trainData3(shuffledIndices, :);
trainLabel3 = trainLabel3(shuffledIndices, :);

shuffledIndices = randperm(size(validData3, 1));
validData3 = validData3(shuffledIndices, :);
validLabel3 = validLabel3(shuffledIndices, :);

% CNN Specifications
imageSize = [1, 1, 27648];
numEpochs = 10;
miniBatchSize = 8;


% train NN1
numberClasses = 2;
net1 = trainModel(trainData1, trainLabel1, validData1, validLabel1, testData1, testLabel1, imageSize, numEpochs, miniBatchSize, numberClasses);

% train NN2 
numberClasses = 10;
net2 = trainModel(trainData2, trainLabel2, validData2, validLabel2, testData2, testLabel2, imageSize, numEpochs, miniBatchSize, numberClasses);

% train NN3
numberClasses = 6;
net3 = trainModel(trainData3, trainLabel3, validData3, validLabel3, testData3, testLabel3, imageSize, numEpochs, miniBatchSize, numberClasses);

% export (save) the three NNs
% Save net1
save('net1.mat', 'net1');

% Save net2
save('net2.mat', 'net2');

% Save net3
save('net3.mat', 'net3');



