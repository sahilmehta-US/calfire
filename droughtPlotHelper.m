droughtPlotHelp = cell(1, length(normalizedDroughts));
sumDroughts = cell(1, length(normalizedDroughts));
for i=1:length(normalizedDroughts)
    droughtPlotHelp{i} = zeros(1, length(years));
    sumDroughts{1} = zeros(1, length(normalizedDroughts{i}));
end

for i=1:10
    for j=1:length(normalizedDroughts)
        droughtPlotHelp{j}(i) = 0;
    end
end

for j = 1:length(normalizedDroughts)
    for i=1:length(normalizedDroughts{j})
        droughtPlotHelp{j}(i+10)=normalizedDroughts{j}(i);
        
    end
end
