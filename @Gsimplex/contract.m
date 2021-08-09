function contract(Gsimplex)
    % contract 	Gsimplex method for contraction step in downhill simplex.
    % See also Esimplex, Gsimplex_run, mirror.

    %% Parameters
    contractStep = Gsimplex.param.simplexContractStep;
    centroid = Gsimplex.centroid;
    maxIndex = Gsimplex.worstVertex.ID;
    inputDimen = Gsimplex.param.inputDimen;    
    simplexInput = Gsimplex.currentSimplex(:,1:inputDimen);
    
    %% Contract
    contractInput = centroid + contractStep * (centroid - simplexInput(maxIndex,1:inputDimen));
    contractCost = evaluate_vertices(Gsimplex.table,contractInput);

    %% Update Gsimplex
    Gsimplex.next2Vertex = [contractInput contractCost];
    Gsimplex.vertices_record = [Gsimplex.vertices_record;contractInput];
    Gsimplex.vertices_cost = [Gsimplex.vertices_cost;contractCost];
    Gsimplex.vertices_operation{end+1,1} = 'contract';
    
end