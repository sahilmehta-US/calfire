SetupMap
ReadDroughts
OrganizeData
startYear = 1990;
endYear = 2019;
years = [startYear:endYear];
[numFires, intersectingFires, degPolySpecies] = countIntersectingAreas(allSpecies, allFires, startYear, endYear);
[burnAreas, kmPolySpecies] = countBurnAreas(intersectingFires, allSpecies, allSCenters, startYear, endYear);
[intersectingDroughts, polyIntersecting] = countIntersectingDroughts(allSpecies, allDroughts, degPolySpecies);
droughtAreas = countDroughtAreas(intersectingDroughts, allSCenters, polyIntersecting);
normalizeAreas

%for i = 1:length(burnAreas)
%    figure(2);
%    plot(years, burnAreas{i});
%    hold on;
%    scatter(years, burnAreas{i});
%    lsline;
%end
%figure(1);