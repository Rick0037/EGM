function unitSet = sample_lhs(Esample)
    % sample_lhs   Esample method for generating the sample set by LHS.
    %
    % See also Esample, select_furthest_sample, Esample_run.
    
    %% Parameters
    setSize  = Esample.param.sampleSetSize;
    dim = Esample.param.inputDimen;
    
    %% LHS sample
    unitSet = lhsdesign(setSize,dim)-0.5;

end