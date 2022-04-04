totalAreas = cell(1,length(allSpecies));
totalDrought = cell(1, length(allSpecies));
totalFire = cell(1, length(allSpecies));

for i = 1:length(allSpecies)
    totalAreas{i} = 0;
    totalDrought{i} = zeros(1, length(droughtPeriod));
    totalFire{i} = zeros(1, length(years));
    for j = 1:length(allSpecies{i})
        totalAreas{i} = totalAreas{i}+area(kmPolySpecies{i}(j));
        totalDrought{i} = totalDrought{i} + droughtAreas{i}{j};
        totalFire{i} = totalFire{i} + burnAreas{i}{j};
    end
end

normalizedFires = cell(1, length(allSpecies));
normalizedDroughts = cell(1, length(allSpecies));

for i = 1:length(allSpecies)
    normalizedFires{i} = totalFire{i}/totalAreas{i};
    normalizedDroughts{i} = totalDrought{i}/totalAreas{i};
end

for j = 1:length(droughtPeriod)
    l = length(allDroughts{i});
    for i = 1:length(allSpecies)
        normalizedDroughts{i}(j) = normalizedDroughts{i}(j)/l;
    end
end