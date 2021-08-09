function parameters = default_parameters()
    % default_parameters    Parameters setting.
    % parameters = default_parameters() returns the parameters including
    % EGM parameters and problem parameters.
    % See also EGM, Esample, Gsimplex, Mtable.

    %% Import,start and save setting
    parameters.importDataBase = 0;
    parameters.defineInitialIndiv = 1;    
    parameters.initialIndiv = [0,0;0.5,0;0,0.5];
    parameters.instantSave = 1;
    
    %% Problem parameters
    parameters.runName = 'Example'; % The name of the run for saving results.
    parameters.evaluationFunction = 'Example'; % The name of the function for evaluation.
    parameters.upperLimit = [3   3]; % The upper boundary for each dimension of inputs.
    parameters.lowerLimit = [-3 -3]; % The lower boundary for each dimension of inputs
    parameters.inputDimen = 2; % The dimension of input variables
    parameters.costDimen = parameters.inputDimen + 1; % The dimension location for a vertex in the data base.
    parameters.punishCost = 10;% The high cost punished to the vertices out of boundary.

    %% EGM setting
    % Gradient_simplex param
    simplexMirrorStep = 1; % Step size of the mirror in downhilll simplex method
    simplexContractStep = 0.5; % Step size of the contract in downhilll simplex method
    simplexExpandStep = 2; % Step size of the expand in downhilll simplex method
    simplexShrinkStep = 1/2; % Step size of the shrink in downhilll simplex method
    simplexParam = ...
    [simplexMirrorStep simplexContractStep simplexExpandStep simplexShrinkStep];
    parameters.simplexParam = simplexParam; % Above parameters combination in downhilll simplex method
    parameters.simplexSize = parameters.inputDimen + 1; % The size of the simplex, which means the number of vertices included in a simplex.
    parameters.gradient_Nstep = 1; % EGM includes 1 step of exploit during each round. 
    
    % Exploration_sample param               
    parameters.exploration_Nstep = 1;% EGM includes 1 step of exploration during each round.       
    parameters.sampleSetSize = 1e3;% EGM includes 1 step of exploration during each round.

end