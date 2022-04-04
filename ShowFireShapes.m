figure(10)
clf
mapshow(S6)
for i = 1:length(intersectingFires{3})
    for j = 1:length(intersectingFires{3}{i})
        if (~isempty(intersectingFires{3}{i}{j}))
            mapshow(intersectingFires{3}{i}{j}, 'FaceColor','r')
        end
    end
end
title(sprintf('Map of Species %s with Fires'), S6.COMNAME)
xlabel("Longitude", 'Color', 'black')
ylabel("Latitude", 'Color', 'black')