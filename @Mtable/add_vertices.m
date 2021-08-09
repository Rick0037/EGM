function add_vertices(Mtable,vertices)    
    % add_vertices   Mtable method for adding evaluated vertices to data base.
    % See also Mtable, evaluate_vertices,find_vertices.

    
    %% Check the existed data
    [existedFlag,~] = find_vertices(Mtable,vertices);
    fresh_vertices = vertices(~existedFlag,:);
    
    %% Add the unexisted data
    objBase = Mtable.table_to_visit;
    Mtable.table_to_visit = [objBase;fresh_vertices];        
    
end