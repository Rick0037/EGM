function update_footprint(EGM,newVertices)
    % update_footprint    EGM method for recording the studied vertices by
    % exploit and exploration.
    % update_footprint(EGM,newVertices) adds the vertices newVertices into
    % egm.footprints.
    % See also EGM, gradient_simplex, exploration_sample, Esample.

    %% Update    
    if nargin < 2
        EGM.footprints = EGM.group{1,EGM.roundID}.simplex_best;
    else    
        EGM.footprints = [EGM.footprints;newVertices];
        EGM.footprints = unique(EGM.footprints,'rows','stable');
    end

end
