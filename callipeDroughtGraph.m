
callippeDrought = cell(1,3);
for i=1:3
    callippeDrought{i} = droughtAreas{1}{i}/area(kmPolySpecies{1}(i));
    callippeDrought{i} = callippeDrought{i}/52;
end
figure(7)
clf
for i=1:length(allSpecies{1})
    plot(droughtPeriod, callippeDrought{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Quantified Drought')
title(sprintf('Quantified Drought for %s', allSpecies{1}(1).COMNAME))
legend({'Vallejo and Cordelia', 'San Francisco', 'Sears Point and Sonoma'}, 'Location', 'northwest')

figure(10)
clf
for i=1:length(allSpecies{1})
    plot(years, burnAreas{1}{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Burned Area (km^2)')
title(sprintf('Burned Habitat Area for %s', allSpecies{1}(1).COMNAME))
legend({'Vallejo and Cordelia', 'San Francisco', 'Sears Point and Sonoma'}, 'Location', 'northwest')