function [burnAreas, kmPolySpecies] = countBurnAreas(intersectingFires, allSpecies, allSCenters, startYear, endYear)

    timeDiff = endYear - startYear + 1;
    burnAreas = cell(1, length(allSpecies));
    kmPolySpecies = cell(1, length(allSpecies));
    for i = 1:length(allSpecies)
        burnAreas{i} = cell(1, length(allSpecies{i}));
        kmPolySpecies{i} = repmat(polyshape, 1, length(allSpecies{i}));
        for j = 1:length(allSpecies{i})
            burnAreas{i}{j} = zeros(1 ,timeDiff);
            [SX,SY] = SDistance(allSCenters{i}{j}, allSpecies{i}(j));
            kmPolySpecies{i}(j) = polyshape(SX, SY);
        end
    end

    for i = 1:length(allSpecies)
        for j = 1:length(allSpecies{i})
            for t = 1:timeDiff
            yearsFires = intersectingFires{i}{j}{t};
                for k = 1:length(yearsFires)
                    fire = yearsFires(k);
                    [fireX, fireY] = SDistance(allSCenters{i}{j}, fire);
                    polyFire = polyshape(fireX, fireY);
                    polyOut = intersect(polyFire, kmPolySpecies{i}(j));
                    burnAreas{i}{j}(t) = burnAreas{i}{j}(t) + area(polyOut);
                end
            end
        end
    end

end