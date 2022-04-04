
missionBlueDrought = cell(1,length(allSpecies{2}));
for i=1:length(allSpecies{2})
    missionBlueDrought{i} = droughtAreas{2}{i}/area(kmPolySpecies{2}(i));
    missionBlueDrought{i} = missionBlueDrought{i}/52;
end
figure(8)
clf
for i=1:length(allSpecies{2})
    plot(droughtPeriod, missionBlueDrought{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Quantified Drought')
title(sprintf('Quantified Drought for %s', allSpecies{2}(1).COMNAME))
legend({'San Mateo County', 'San Bruno Mountain State Park', 'Twin Peaks', 'Golden Gate Recreation Area'}, 'Location', 'northwest')


figure(11)
clf
for i=1:length(allSpecies{2})
    plot(years, burnAreas{2}{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Burned Area (km^2)')
title(sprintf('Burned Habitat Area for %s', allSpecies{2}(1).COMNAME))
legend({'San Mateo County', 'San Bruno Mountain State Park', 'Twin Peaks', 'Golden Gate Recreation Area'}, 'Location', 'northwest')

