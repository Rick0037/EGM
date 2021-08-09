function mirror(Gsimplex)
    % mirror 	Gsimplex method for getting the mirror point of the
    % worst(with the maximum cost) vertex.
    % See also Esimplex, Gsimplex_run, get_opposite_centroid.

%% Parameters
    mirrorStep = Gsimplex.param.simplexMirrorStep;
    centroid = Gsimplex.centroid;
    maxIndex = Gsimplex.worstVertex.ID;
    inputDimen = Gsimplex.param.inputDimen; 
    simplexInput = Gsimplex.currentSimplex;
    
%% Mirror    
    mirrorInput = centroid + mirrorStep * (centroid - simplexInput(maxIndex,1:inputDimen));
    mirrorCost = evaluate_vertices(Gsimplex.table,mirrorInput);

%%   update  Gsimplex.
    Gsimplex.nextVertex = [mirrorInput mirrorCost];
    Gsimplex.vertices_record = [Gsimplex.vertices_record;mirrorInput];
    Gsimplex.vertices_cost = [Gsimplex.vertices_cost;mirrorCost];
    Gsimplex.vertices_operation{end+1,1} = 'mirror';
    
end