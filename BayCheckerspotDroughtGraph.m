bayCheckerspotDrought = cell(1,length(allSpecies{3}));
for i=1:length(allSpecies{3})
    bayCheckerspotDrought{i} = droughtAreas{3}{i}/area(kmPolySpecies{3}(i));
    bayCheckerspotDrought{i} = bayCheckerspotDrought{i}/52;
end
figure(9)
clf
for i=1:length(allSpecies{3})
    plot(droughtPeriod, bayCheckerspotDrought{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Quantified Drought')
title(sprintf('Quantified Drought for %s', allSpecies{3}(1).COMNAME))
legend({'Coyote Ridge', 'Jasper Ridge Biological Preserve', 'Crystal Springs', 'San Mateo County', 'San Bruno Mountain State Park'}, 'Location', 'northwest')

figure(12)
clf
for i=1:length(allSpecies{3})
    plot(years, burnAreas{3}{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Burned Area (km^2)')
title(sprintf('Burned Habitat Area for %s', allSpecies{3}(1).COMNAME))
legend({'Coyote Ridge', 'Jasper Ridge Biological Preserve', 'Crystal Springs', 'San Mateo County', 'San Bruno Mountain State Park'})
