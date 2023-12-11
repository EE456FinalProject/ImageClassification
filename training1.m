clear;
clc;
close all;

load trainData1.mat
load trainData2.mat
load trainData3.mat

load trainLabel1.mat
load trainLabel2.mat
load trainLabel3.mat

load validData1.mat
load validData2.mat
load validData3.mat

load validLabel1.mat
load validLabel2.mat
load validLabel3.mat

load testData1.mat
load testData2.mat
load testData3.mat

load testLabel1.mat
load testLabel2.mat
load testLabel3.mat

% This main script is used to train and test solution one 
% solution one creates three NNs
% 1. predicts if the input is within the number class or the signature class
% 2. predicts the number
% 3. predicts the signature

% CNN Specifications -----------------------------------------------------
imageSize = [1, 1, 27648];
numEpochs = 20;
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

% export (save) the three NNs --------------------------------------------
% Save net1
save('net1.mat', 'net1');

% Save net2
save('net2.mat', 'net2');

% Save net3
save('net3.mat', 'net3');



