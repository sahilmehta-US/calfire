function [numFires, intersectingFires, degPolySpecies] = countIntersectingAreas(allSpecies, allFires, startYear, endYear)

    timeDiff = endYear-startYear + 1;
    intersectingFires = cell(1,length(allSpecies));
    numFires = cell(1,length(allSpecies));
    degPolySpecies = cell(1, length(allSpecies));
    for i = 1:length(allSpecies)
        intersectingFires{i} = cell(1, length(allSpecies{i}));
        numFires{i} = cell(1, length(allSpecies{i}));
        degPolySpecies{i} = repmat(polyshape, 1, length(allSpecies{i}));
        for j = 1:length(allSpecies{i})
            numFires{i}{j} = zeros(1, timeDiff);
            degPolySpecies{i}(j) = polyshape(allSpecies{i}(j).X, allSpecies{i}(j).Y);
            intersectingFires{i}{j} = cell(1, timeDiff);
        end
    end    

    for fires_i = 1:length(allFires)
        Fires = allFires{fires_i};
        for fires_j = 1:length(Fires)
            fire = Fires(fires_j);
            fyear = str2num(fire.FIRE_YEAR);
            findex = fyear - startYear + 1;
            polyFire = polyshape(fire.X, fire.Y);
            for species_i = 1:length(allSpecies)
                species = allSpecies{species_i};
                for species_j = 1:length(species)
                    polyout = intersect(polyFire, degPolySpecies{species_i}(species_j));
                    if (area(polyout) > 0)
                        numFires{species_i}{species_j}(findex) = numFires{species_i}{species_j}(findex) + 1;
                        intersectingFires{species_i}{species_j}{findex}(length(intersectingFires{species_i}{species_j}{findex}) + 1) = fire;
                    end
                end
            end
        end
    end

end