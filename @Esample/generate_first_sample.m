function unitSample = generate_first_sample(Esample,sampleSize)
    % generate_first_sample   Esample method for generating the first sample randomly.
    % See also Esample_run.

    %% Parameters
    dim = Esample.param.inputDimen; 
    
    %% Generate a random sample in the sapce 
    % Create the 1st sample in a unit space
    unitSample = rand(sampleSize,dim)-0.5;
    
end