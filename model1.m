clear;
clc;
close all;

load net1.mat
load net2.mat
load net3.mat

load testData1_1.mat
load testData2.mat
load testData3.mat

load testLabel1_1.mat
load testLabel2.mat
load testLabel3.mat

data = vertcat(testData1_1, testData2, testData3);
label = categorical(vertcat(testLabel1_1, testLabel2, testLabel3));

len = size(data, 1);

error = 0;

for i = 1:len
    % get the testing image
    imageSize = [1, 1, 27648];
    target_image = data(i, :);
    target_label = (label(i, :));
    target_image = reshape(target_image', [imageSize, numel(target_label)]);

    % get the output from the first net
    predictedLabel1 = classify(net1, target_image);

    % if it is number => use net2
    if predictedLabel1 == categorical(11)
        predictedLabel2 = (classify(net2, target_image));
    % if it is signature => use net3
    else
        predictedLabel2 = (classify(net3, target_image));
    end

    % check if the prediction is correct
    if predictedLabel2 ~= target_label
        error = error + 1;
        fprintf("Failed to predict %d\n", target_label);
    end
end

% check the accuracy 
fprintf("The accurcy with solution 1 is %.5f\n", (len-error)/len);
fprintf("There are %d errors out of %d data\nS", error, len);