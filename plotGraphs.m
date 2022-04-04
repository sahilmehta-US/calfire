for i=1:length(allSpecies)
    figure(i)
    clf
    colororder(lines(7))
    bar(years, [droughtPlotHelp{i}; totalFire{i}])
    ylabel('Quantified Drought')
    hold on
    colororder({'black', 'black'})
    yyaxis right
    colororder(lines(7))
    bar(years, [droughtPlotHelp{i}; totalFire{i}])
    xlabel('Year')
    ylabel('Burn Area (km^2)')
    a = allSpecies{i}.COMNAME;
    title(sprintf('Droughts and Burn Area in Habitat of species %s', a))
    xticks(years)
    legend('Drought', 'Burn Area')
end
