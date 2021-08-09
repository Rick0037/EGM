function get_opposite_centroid(Gsimplex)
    % get_opposite_centroid 	Gsimplex method for getting the centroid of
    % the vertices opposite to the worst(with the maximum cost) vertex in
    % a simplex.
    % See also Esimplex, Gsimplex_run, mirror.


    %% Parameters
    inputDimen = Gsimplex.param.inputDimen;
    maxIndex = Gsimplex.worstVertex.ID;
    simplexInput = Gsimplex.currentSimplex(:,1:inputDimen);
    num_of_bestOpoposite = Gsimplex.param.simplexSize - 1;    
    
    %% Compute centroids
    centroid = (sum(simplexInput,1) - simplexInput(maxIndex,:))/num_of_bestOpoposite;
    Gsimplex.centroid  = centroid;
    
end
