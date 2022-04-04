%A = imread('PIA03333.tif');
%S = shaperead('Fire1898_2019.shp');
%[Z,C11,CMN,mima,colmap,colrange]=CyprusSRTM;

clf
subplot(231)
imagesc(Z)
colorbar
axis square
text(0.025,0.95,"A",'Units','normalized','FontSize',12)
title("California Topography")

subplot(234)
%mapshow(S)
text(0.025,0.95,"B",'Units','normalized','FontSize',12)
title("Wildfire Burn Area")


subplot(2,3, [2 3 5 6])

imagesc(Z)
hold on

eX = 1:1200;
eY = 1:1320;
[EX,EY]=meshgrid(eX,eY);

%means = 1:20742;
%devs = 1:20742;
%areas = 1:20742;
biggest = 1:20742;

%imagesc(R)
%hold on

for index = 1:20742
    plot(S(index).X/70+6200-.1*(2000-S(index).Y/90), 4740-S(index).Y/90, 'r')
    %plot(S(index).X/700+620, 474-S(index).Y/930, 'r')
    %h=inpolygon(EX,EY,S(index).X/700+620, 474-S(index).Y/950);
    %means(index) = nanmean(R(h));
    %areas(index) = sum(sum(h));
    %biggest(index) = max(max(R(h)));
end

colorbar
text(0.025,0.95,"C",'Units','normalized','FontSize',12)
title("Topography Overlaid with Wilfire Area")

axis on