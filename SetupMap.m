% Maps of endangered species
%S1 = shaperead('species/FCH_Berberis_nevinii_20080213/FCH_Berberis_nevinii_20080213.shp');
%S2 = shaperead('species/FCH_Brodiaea_filifolia_20110208/FCH_Brodiaea_filifolia_20110208.shp');
%S3 = shaperead('species/FCH_Chamaesyce_hooveri_20060210/FCH_Chamaesyce_hooveri_20060210.shp');
S4 = shaperead('species/usfws_I019_I01_Speyeria_callippe_callippe_current_range/usfws_I019_I01_Speyeria_callippe_callippe_current_range.shp');
S5 = shaperead('species\usfws_I00J_I01_Icaricia_icarioides_missionensis_current_range\usfws_I00J_I01_Icaricia_icarioides_missionensis_current_range.shp');
S6 = shaperead('species/usfws_I021_I01_Euphydryas_editha_bayensis_current_range/usfws_I021_I01_Euphydryas_editha_bayensis_current_range.shp');

% Fires and California Maps
%Fires_80_89 = shaperead('1980_1989WFDSSHistoricPerimeters/HistoricFirePerimeters_1980_1989.shp');
Fires_90_99 = shaperead('1990_1999WFDSSHistoricPerimeters/HistoricFirePerimeters_1990_1999.shp');
Fires_00_09 = shaperead('2000_2009WFDSSHistoricPerimeters/HistoricFirePerimeters_2000_2009.shp');
Fires_19 = shaperead('2019_WFDSSHistoricPerimeters/HistoricFirePerimeters_2019.shp');
%Precip_2010 = imread('Droughts/20220215_usdm.tif');
Fires_10_19 = shaperead("WFDSSHistoricFirePerimeters_2010_2019/WFDSSHistoricFirePerimeters_2010_2019.shp");
%Fires_79_under = shaperead("WFDSSHistoricFirePerimeters_1979_Earlier\WFDSSHistoricFirePerimeters_1979_Earlier.shp");
%Fires_2020 = shaperead("WFDSSHistoricFirePerimeters_2020\WFDSSHistoricFirePerimeters_2020.shp");

[Z,C11,CMN,mima,colmap,colrange]=CaliforniaSRTM;

% Set scale of California topo map sections
%eX=linspace(C11(1),CMN(1),size(Z,2));
%eY=linspace(C11(2),CMN(2),size(Z,1));

%clf;

%mapshow(S4, 'FaceColor', 'cyan')
%mapshow(Fires_10_19, 'FaceColor', 'red')

%xlimit = [-125,-113];
%ylimit = [30,43];
%set(gca,'XLim', xlimit, 'YLim', ylimit);
