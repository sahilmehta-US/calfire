clf;

mapshow(S4, 'FaceColor', 'cyan')

for index = 1:length(Fires_10_19)
       if strcmp(Fires_10_19(index).FIRE_YEAR, '2017') == 1
           mapshow(Fires_10_19(index), 'FaceColor', 'red')
       end
end

xlimit = [-125,-113];
ylimit = [30,43];
set(gca,'XLim', xlimit, 'YLim', ylimit);
