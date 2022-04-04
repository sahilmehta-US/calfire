function [] = plotAllGraphs(allSpecies, droughtAreas, droughtPeriod, burnAreas, years)
for i = 1:length(allSpecies)
    figure(i)
    a = allSpecies{i}.COMNAME;
    title(['Quantified Drought for ', a])
    for j = 1:length(allSpecies{i})
        hold on
        plot(droughtPeriod, droughtAreas{i}{j}, 'LineWidth', 2)
        xticks(2000:1:2019);
        xlabel('Time (Years)')
        ylabel('Quantified Drought')
    end
    figure(i+length(allSpecies))
    title(['Habitat Area Burned for ', a])
    for j = 1:length(allSpecies{i})
        hold on
        plot(years, burnAreas{i}{j}, 'LineWidth', 2)
        xticks(1990:1:2019);
        xlabel('Time (Years)')
        ylabel('Burned Area (km^2)')
    end
end
