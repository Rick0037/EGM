function compute_set_distance(Esample)
    % compute_set_distance    Esample method for getting the Euclidean
    % distances between data points in data set Esample.newSet and those in
    % Esample.oldSet;
    %
    % See also Esample, sample_lhs, select_furthest_sample.
    
    %% Parameters
    newSet  = Esample.newSet;
    oldSet = Esample.oldSet;
    
    %% Compute distance matrix
    distMatr = pdist2(newSet,oldSet,'Euclidean');
    Esample.distanceMap = distMatr;
    
end