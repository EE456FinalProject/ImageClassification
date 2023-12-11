clear;
clc;
close all;

load trainData1_1.mat
load trainLabel1_1.mat

load validData1_1.mat
load validLabel1_1.mat

load testData1_1.mat
load testLabel1_1.mat

% This main script is used to train and test solution two 
% solution one creates one NNs
% 1. predicts the exact output (number or signature)

% CNN Specifications -----------------------------------------------------
imageSize = [1, 1, 27648];
numEpochs = 20;
miniBatchSize = 8;

% train NN
numberClasses = 16;
net1_1 = trainModel(trainData1_1, trainLabel1_1, validData1_1, validLabel1_1, testData1_1, testLabel1_1, imageSize, numEpochs, miniBatchSize, numberClasses);

% export (save) the three NNs --------------------------------------------
% Save net1
save('net1_1.mat', 'net1_1');



