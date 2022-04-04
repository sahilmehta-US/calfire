allSpecies = cell(1,3);
allSpecies{1} = S4;
allSpecies{2} = S5;
allSpecies{3} = S6;

for i = 1:length(allSpecies)
    S = allSpecies{i};
    SX = S.X;
    SY = S.Y;

    idx = all(isnan(SX),1);
    idr = diff(find([1, diff(idx), 1]));

    splitSX = mat2cell(SX, 1, idr);
    splitSY = mat2cell(SY, 1, idr);
    
    SBox = cell(1, length(splitSX)/2);
    SXnew = cell(1, length(splitSX)/2);
    SYnew = cell(1, length(splitSY)/2);

    for j = 1:length(splitSX)/2
        SXnew{j} = splitSX{2*j - 1};
        SYnew{j} = splitSY{2*j - 1};
        SBox{j} = S.BoundingBox;
    end
    allSpecies{i} = struct('BoundingBox', SBox, 'X', SXnew, 'Y', SYnew, 'COMNAME', allSpecies{i}.COMNAME);
end

allFires = cell(1,4);
allFires{1} = Fires_90_99;
allFires{2} = Fires_00_09;
allFires{3} = Fires_10_19;
allFires{4} = Fires_19;

allSCenters = cell(1,length(allSpecies));
for i = 1:length(allSpecies)
    s = allSpecies{i};
    allSCenters{i} = cell(1, length(s));
    for j = 1:length(s)
        allSCenters{i}{j} = SCenter(s(j));
    end
end
    
