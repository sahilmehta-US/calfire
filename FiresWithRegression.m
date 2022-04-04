for i=1:3
    figure(i)
    clf
    scatter(years, totalFire{i})
    hl = lsline;
    B = [ones(size(hl.XData(:))), hl.XData(:)]\hl.YData(:);
    lline = B(1) + B(2)*years;
    clf
    plot(years, totalFire{i}, 'LineWidth',2)
    hold on
    plot(years, lline, 'LineWidth', 2)
    xlabel('Time (years)')
    ylabel('Burned area (km^2)')
    title(sprintf('Burned Area for %s', allSpecies{i}(1).COMNAME))
    legend('Actual', 'Regression')
end