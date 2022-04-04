
missionBlueDrought = cell(1,length(allSpecies{2}));
for i=1:length(allSpecies{2})
    missionBlueDrought{i} = droughtAreas{2}{i}/area(kmPolySpecies{2}(i));
    missionBlueDrought{i} = missionBlueDrought{i}/52;
end
figure(8)
clf
hold on
yyaxis right
ylabel('Population')
bar (2015, 62, .25, 'FaceColor',[.8500 .3250 .0980])
bar (2017, 221, .25, 'FaceColor',[.8500 .3250 .0980])
bar (2019, 157, .25, 'FaceColor',[.8500 .3250 .0980])
hold on
axis ([1990 2020 0 2000])
yyaxis left
newColorOrder = [0 .4470 .7410
            .8500 .3250 .0980
            .9290 .6940 .1250
            .4940 .1840 .5560
            .4660 .6740 .1880
            .3010 .7450 .9330
            .6350 .0780 .1840];
colororder(newColorOrder)
for i=1:length(allSpecies{2})
    yyaxis left
    plot(droughtPeriod, missionBlueDrought{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Quantified Drought')
title(sprintf('Quantified Drought for %s', allSpecies{2}(1).COMNAME))
legend({'San Mateo County', 'San Bruno Mountain State Park', 'Twin Peaks', 'Golden Gate Recreation Area'}, 'Location', 'northwest')


figure(11)
clf
hold on
yyaxis right
ylabel('Population')
bar (2015, 62, .25, 'FaceColor',[.8500 .3250 .0980])
bar (2017, 221, .25, 'FaceColor',[.8500 .3250 .0980])
bar (2019, 157, .25, 'FaceColor',[.8500 .3250 .0980])
hold on
axis ([1990 2020 0 2000])
yyaxis left
newColorOrder = [0 .4470 .7410
            .8500 .3250 .0980
            .9290 .6940 .1250
            .4940 .1840 .5560
            .4660 .6740 .1880
            .3010 .7450 .9330
            .6350 .0780 .1840];
colororder(newColorOrder)
for i=1:length(allSpecies{2})
    yyaxis left
    plot(years, burnAreas{2}{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Burned Area (km^2)')
title(sprintf('Burned Habitat Area for %s', allSpecies{2}(1).COMNAME))
legend({'San Mateo County', 'San Bruno Mountain State Park', 'Twin Peaks', 'Golden Gate Recreation Area'}, 'Location', 'northwest')

