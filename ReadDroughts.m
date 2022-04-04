allDroughts = cell(1,20);
droughtPeriod = [2000:2019];

for i = 1:length(allDroughts)
    directory = dir(fullfile(append('USDM/Droughts_', num2str(1999+i)), '*.shp'));
    allDroughts{i} = cell(1, length(directory));
    for j = 1:length(directory)
    %for j = 15:25
        allDroughts{i}{j} = shaperead(append('USDM/Droughts_', num2str(1999+i), '/', directory(j).name));
        for k = 1:length(allDroughts{i}{j})
            allDroughts{i}{j}(k).Year = 1999+i;
            mth = extractBetween(directory(j).name, 10, 11);
            allDroughts{i}{j}(k).Month = str2num(mth{1});
        end
    end
end
