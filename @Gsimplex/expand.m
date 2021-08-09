function expand(Gsimplex)
    % expand 	Gsimplex method for expansion step in downhill simplex.
    % See also Esimplex, Gsimplex_run, mirror.


    %% Parameter
    expandStep = Gsimplex.param.simplexExpandStep;
    centroid = Gsimplex.centroid;
    maxIndex = Gsimplex.worstVertex.ID;
    inputDimen = Gsimplex.param.inputDimen;   
    simplexInput = Gsimplex.currentSimplex(:,1:inputDimen);
    
    %% Expand
    expandInput = centroid + expandStep * (centroid - simplexInput(maxIndex,:));
    expandCost = evaluate_vertices(Gsimplex.table,expandInput);

    %% Update
    Gsimplex.next2Vertex = [expandInput expandCost];
    Gsimplex.vertices_record = [Gsimplex.vertices_record;expandInput];
    Gsimplex.vertices_cost = [Gsimplex.vertices_cost;expandCost];
    Gsimplex.vertices_operation{end+1,1} = 'expand';
    
end