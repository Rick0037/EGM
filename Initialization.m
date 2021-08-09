    % Initialization script.
    % Initialization    Load path to use in EGM and displays the information.

    %% Load Paths    
    addpath ../EGM_v0.1.2.4
    % Tools
    addpath Tools
    addpath Tools/TRICONT/
    % Plants
    addpath Plant

    %% Show more
    more off;

    %% Information display
    % Header
    fprintf('=====================')
    fprintf('xEGM ')
    fprintf('=====================\n')
    % Version
    disp(' Welcome to the xEGM software to solve non-convex')
    disp(' optimization problems.')
    % Start
    disp(' Start by creating a EGM object with : egm=EGM;')
    % Foot
    fprintf('===========================')
    fprintf('===========================\n')
    fprintf('\n')