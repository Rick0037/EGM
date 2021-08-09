function pubishedVertices = punish_outLimit(Mtable,vertices_to_punish)
    % punish_outLimit   Mtable method for punishing the vetices out of the
    % boundary with high costs.
    % 
    % Mtable.punish_outLimit(vertices_to_punish) gives high costs like 10
    % which is much higher than those within boundary to
    % vertices_to_punish during evaluation.
    % See also Mtable, evaluate_vertices.
    %% Parameters
    punishCost = Mtable.param.punishCost;
    vertSize = size(vertices_to_punish,1);
    
    %% Punish
    pubishedVertices = [vertices_to_punish punishCost*ones(vertSize,1)];

end