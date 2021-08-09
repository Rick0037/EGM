function generate_group(EGM)                                                                                    
    % generate_group    EGM method for generating a new group.
    % egm.generate_group initizalize a group to evolve. The initial group 
    % is a simplex including N+1 vertices in a N dimensional sapc
    % See also EGM, go, update_the_group.


    %% Parameters
    simplexSize = EGM.param.simplexSize;
    inputDimen = EGM.param.inputDimen;  
    input_upperLimit = EGM.param.upperLimit;
    input_lowerLimit = EGM.param.lowerLimit;
    round_ongoing = EGM.roundID+1;
    
    %% Generate initial simplex
    % Create the initial simplex in a unit space
    unitsample = rand(simplexSize,inputDimen)-0.5;
    % Project to the real space
    firstSimplex = return_real_domain(unitsample,input_lowerLimit,input_upperLimit);

    %% Update and change the status   
    EGM.group{1,round_ongoing}.vertices = firstSimplex;
    EGM.group{1,round_ongoing}.operation = [];
    for i = 1:simplexSize
        EGM.group{1,round_ongoing}.operation{i,1} = 'random';
    end
    
end