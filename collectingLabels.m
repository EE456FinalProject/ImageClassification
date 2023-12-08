function collectingLabels(main_folder, labels, darkness_vectors)

    % Get a list of all subfolders in the main folder
    subfolders = dir(fullfile(main_folder, '*.*'));

    index = 11;
    
    % Iterate over each subfolder
    for i = 1:length(subfolders)
        % Skip '.' and '..' folders
        if subfolders(i).isdir && ~strcmp(subfolders(i).name, '.') && ~strcmp(subfolders(i).name, '..')
            % Get the subfolder location
            subfolder_location = fullfile(main_folder, subfolders(i).name);
            
            % creating a mat file that has the labels and the corresponding labels
            [sub_labels, sub_darkness_vectors] = addingLabels(subfolder_location, index+i);
            
            % concatenating the labels and the vectors
            vertcat(labels, sub_labels);
            vertcat(darkness_vectors, sub_darkness_vectors);
        end
    end
end
