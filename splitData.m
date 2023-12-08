function [trainData, trainLabel, validData, validLabel, testData, testLabel] = splitData(darkness_matrices, labels)
    % Ensure that the data matrix has the correct dimensions (n x 27648)

    % Shuffle the data and labels together
    rng('shuffle');
    shuffledIndices = randperm(size(darkness_matrices, 1));
    darkness_matrices = darkness_matrices(shuffledIndices, :);
    labels = labels(shuffledIndices);

    % Set the percentage of data to be used for validation and testing
    validationPercentage = 0.1; % You can adjust this value as needed
    testPercentage = 0.1;

    % Calculate the number of samples for validation and testing
    numValidationSamples = round(validationPercentage * size(darkness_matrices, 1));
    numTestSamples = round(testPercentage * size(darkness_matrices, 1));

    % Divide the data into training, validation, and testing sets
    trainData = darkness_matrices(numValidationSamples + numTestSamples + 1:end, :);
    trainLabel = labels(numValidationSamples + numTestSamples + 1:end);

    validData = darkness_matrices(1:numValidationSamples, :);
    validLabel = labels(1:numValidationSamples);

    testData = darkness_matrices(numValidationSamples + 1:numValidationSamples + numTestSamples, :);
    testLabel = labels(numValidationSamples + 1:numValidationSamples + numTestSamples);

    % Ensure that all categories are represented in the validation set
    uniqueCategories = unique(labels);
    categoriesInTraining = unique(trainLabel);
    categoriesInValidation = unique(validLabel);

    % Find missing categories in validation and add samples to validation set
    missingCategories = setdiff(uniqueCategories, categoriesInValidation);
    for i = 1:length(missingCategories)
        category = missingCategories(i);
        categoryIndices = find(labels == category);

        % Add a sample from the missing category to the validation set
        randomIndex = randi(length(categoryIndices));
        validData = [validData; darkness_matrices(categoryIndices(randomIndex), :)];
        validLabel = [validLabel; labels(categoryIndices(randomIndex))];

        % Remove the added sample from the training set
        trainData(categoryIndices(randomIndex), :) = [];
        trainLabel(categoryIndices(randomIndex)) = [];
    end
end
