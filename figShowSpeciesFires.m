figure(1)
clf;

caliTopo

%Show Precipitation
%imshow Precip_2010

% Show Fires
mapshow(Fires_80_89, 'FaceColor', 'yellow')
mapshow(Fires_90_99, 'FaceColor', 'yellow')
mapshow(Fires_00_09, 'FaceColor', 'magenta')
mapshow(Fires_19, 'FaceColor', 'cyan')

% Show Species
%mapshow(S1, 'FaceColor', 'magenta')
%mapshow(S2, 'FaceColor', 'cyan')
%mapshow(S3, 'FaceColor', 'yellow')
mapshow(S4, 'FaceColor', 'red')