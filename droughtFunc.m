function [droughtVal] = droughtFunc(intersectingDroughts, allSCenters, polyIntersecting, i, j, t)

    droughtVal = 0;
    for severity = 1:length(intersectingDroughts{i}{j}{t})
        for droughtNum = 1:length(intersectingDroughts{i}{j}{t}{severity})
            dx = rot90(polyIntersecting{i}{j}{t}{severity}{droughtNum}.Vertices(:,1));
            dy = rot90(polyIntersecting{i}{j}{t}{severity}{droughtNum}.Vertices(:,2));
            d = struct('X', dx, 'Y', dy);
            [droughtX, droughtY] = SDistance(allSCenters{i}{j}, d);
            polyOut = polyshape(droughtX, droughtY);
            droughtVal = droughtVal + severity*area(polyOut);
        end
    end

end
