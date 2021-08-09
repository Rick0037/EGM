function sort_vertex(Gsimplex)
    % sort_vertex 	Gsimplex method for sorting the vertices in a simplex
    % according to their costs.
    % See also Esimplex, Gsimplex_run.
    

    %% Parameters        
    costDimen = Gsimplex.param.costDimen;
    simplexCost = Gsimplex.currentSimplex(:,costDimen);
    
    %% Minimal cost and location
    [minVal,minIndex] = min(simplexCost);  
    Gsimplex.bestVertex.cost = minVal;
    Gsimplex.bestVertex.ID = minIndex;
    
    %% Maximal cost and location
    [maxVal,maxIndex] = max(simplexCost);
    Gsimplex.worstVertex.cost = maxVal;
    Gsimplex.worstVertex.ID = maxIndex;

end