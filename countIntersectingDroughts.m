function [intersectingDroughts, polyIntersecting] = countIntersectingDroughts(allSpecies, allDroughts, degPolySpecies)

    intersectingDroughts = cell(1, length(allSpecies));
    polyIntersecting = cell(1, length(allSpecies));

    for i = 1:length(allSpecies)
        intersectingDroughts{i} = cell(1, length(allSpecies{i}));
        polyIntersecting{i} = cell(1, length(allSpecies{i}));
        for k = 1:length(allSpecies{i})
            intersectingDroughts{i}{k} = cell(1, length(allDroughts));
            polyIntersecting{i}{k} = cell(1, length(allDroughts));
            for t = 1:length(allDroughts)
                intersectingDroughts{i}{k}{t} = cell(1, 5);
                polyIntersecting{i}{k}{t} = cell(1,5);
                for s = 1:5
                    intersectingDroughts{i}{k}{t}{s} = {};
                    polyIntersecting{i}{k}{t}{s} = {};
                end
            end
        end
    end

    for Year = 1:length(allDroughts)
        for Week = 1:length(allDroughts{Year})
            for Ind = 1:length(allDroughts{Year}{Week})
                severity = allDroughts{Year}{Week}(Ind).DM + 1;
                polyDrought = polyshape(allDroughts{Year}{Week}(Ind).X, allDroughts{Year}{Week}(Ind).Y);
                for i = 1:length(allSpecies)
                    for j = 1:length(allSpecies{i})
                        polyOut = intersect(polyDrought, degPolySpecies{i}(j));
                        if (area(polyOut) > 0)
                            l = length(intersectingDroughts{i}{j}{Year}{severity}) + 1;
                            intersectingDroughts{i}{j}{Year}{severity}{l} = allDroughts{Year}{Week}(Ind);
                            polyIntersecting{i}{j}{Year}{severity}{l} = polyOut;
                        end
                    end
                end
            end
        end
    end
end