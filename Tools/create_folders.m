function create_folders(name_of_the_run)
    % create_folders creates a folder to save a EGM run.
    % See also save_results, load_obj.

    %% Name and directory
    name  = name_of_the_run;
    dir_save = ['save_runs/',name];
    
    %% Save folder
    if ~exist(dir_save,'dir')
        mkdir(dir_save);
    end
    
    %% Figure sub-folder
    if ~exist([dir_save,'/Figures'],'dir')
        mkdir([dir_save,'/Figures']);
    end
    
end