calfi
callippeDrought = cell(1,3);
for i=1:3
    callippeDrought{i} = droughtAreas{1}{i}/area(kmPolySpecies{1}(i));
    callippeDrought{i} = callippeDrought{i}/52;
end
figure(7)
clf
hold on
yyaxis right
ylabel('Population')
bar(2014, 594, .25, 'FaceColor',[.8500 .3250 .0980])
bar(2018, 387, .25, 'FaceColor',[.8500 .3250 .0980])
bar(2020, 686, .25, 'FaceColor',[.8500 .3250 .0980])
hold on
axis ([2000 2020 0 2000])
yyaxis left
newColorOrder = [0 .4470 .7410
            .8500 .3250 .0980
            .9290 .6940 .1250
            .4940 .1840 .5560
            .4660 .6740 .1880
            .3010 .7450 .9330
            .6350 .0780 .1840];
colororder(newColorOrder)
for i=1:length(allSpecies{1})
    yyaxis left
    plot(droughtPeriod, callippeDrought{i}, 'LineWidth', 2)
    hold on
end
xlabel('Time (Years)')
ylabel('Quantified Drought')
title(sprintf('Quantified Drought for %s', allSpecies{1}(1).COMNAME))
legend({'Vallejo and Cordelia', 'San Francisco', 'Sears Point and Sonoma'}, 'Location', 'northwest')

figure(10)
clf
hold on
yyaxis right
ylabel('Population')
bar(2014, 594, .25, 'FaceColor',[.8500 .3250 .0980])
bar(2018, 387, .25, 'FaceColor',[.8500 .3250 .0980])
bar(2020, 686, .25, 'FaceColor',[.8500 .3250 .0980])
hold on
axis ([2000 2020 0 2000])
yyaxis left
newColorOrder = [0 .4470 .7410
            .8500 .3250 .0980
            .9290 .6940 .1250
            .4940 .1840 .5560
            .4660 .6740 .1880
            .3010 .7450 .9330
            .6350 .0780 .1840];
colororder(newColorOrder)
for i=1:length(allSpecies{1})
    yyaxis left
    plot(years, burnAreas{1}{i}, 'LineWidth', 2)
    hold on
end
hold on
xlabel('Time (Years)')
ylabel('Burned Area (km^2)')
title(sprintf('Burned Habitat Area for %s', allSpecies{1}(1).COMNAME))
legend({'Vallejo and Cordelia', 'San Francisco', 'Sears Point and Sonoma'}, 'Location', 'northwest')