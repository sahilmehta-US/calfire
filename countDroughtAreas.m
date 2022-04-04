function [droughtAreas] = countDroughtAreas(intersectingDroughts, allSCenters, polyIntersecting)

    droughtAreas = cell(1, length(intersectingDroughts));                              
    for i = 1:length(intersectingDroughts)
        droughtAreas{i} = cell(1, length(intersectingDroughts{i}));
        for j = 1:length(intersectingDroughts{i})
            droughtAreas{i}{j} = zeros(1, length(intersectingDroughts{i}{j}));
            for t = 1:length(intersectingDroughts{i}{j})
                droughtAreas{i}{j}(t) = droughtFunc(intersectingDroughts, allSCenters, polyIntersecting, i, j, t);
            end
        end
    end

end