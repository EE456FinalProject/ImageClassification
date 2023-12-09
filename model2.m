clear;
clc;
close all;

load net1_1.mat

load testData1_1.mat

load testLabel1_1.mat

data = testData1_1;
label = categorical(testLabel1_1);

len = size(data, 1);

error = 0;

for i = 1:len
    % get the testing image
    imageSize = [1, 1, 27648];
    target_image = data(i, :);
    target_label = (label(i, :));
    target_image = reshape(target_image', [imageSize, numel(target_label)]);

    % get the output from the net
    predictedLabel1 = classify(net1_1, target_image);

    % check if the prediction is correct
    if predictedLabel1 ~= target_label
        error = error + 1;
    end
end

% check the accuracy 
fprintf("The accurcy with solution 2 is %.5f\n", (len-error)/len);
fprintf("There are %d errors out of %d data\nS", error, len);