function actual_sample = return_real_domain(unitsample,input_lowerLimit,input_upperLimit)
    % return_real_domain projects the vertices in the unit space unitsample
    % into the domain described by input_lowerLimit,input_upperLimit, and
    % returns the vertices in the real sapce.
    % See also generate_group, Esample_run.



    %% Parameters
    input_range = input_upperLimit - input_lowerLimit;
    input_middle = (input_upperLimit + input_lowerLimit)/2;    
    
    %% Project to the real domain
    actual_sample = input_middle + input_range.*unitsample;
    
end