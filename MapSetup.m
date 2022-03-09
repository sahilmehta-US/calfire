% Maps of endangered species
S1 = shaperead('species/FCH_Berberis_nevinii_20080213/FCH_Berberis_nevinii_20080213.shp');
S2 = shaperead('species/FCH_Brodiaea_filifolia_20110208/FCH_Brodiaea_filifolia_20110208.shp');
S3 = shaperead('species/FCH_Chamaesyce_hooveri_20060210/FCH_Chamaesyce_hooveri_20060210.shp');
S4 = shaperead('species/usfws_I019_I01_Speyeria_callippe_callippe_current_range/usfws_I019_I01_Speyeria_callippe_callippe_current_range.shp');


% Fires and California Maps
Fires_80_89 = shaperead('1980_1989WFDSSHistoricPerimeters/HistoricFirePerimeters_1980_1989.shp');
Fires_90_99 = shaperead('1990_1999WFDSSHistoricPerimeters/HistoricFirePerimeters_1990_1999.shp');
Fires_00_09 = shaperead('2000_2009WFDSSHistoricPerimeters/HistoricFirePerimeters_2000_2009.shp');
Fires_19 = shaperead('2019_WFDSSHistoricPerimeters/HistoricFirePerimeters_2019.shp');
Precip_2010 = imread('Droughts/20220215_usdm.tif');
Fires_all = shaperead('California_Fire_Perimeters_(all)\California_Fire_Perimeters__1950__.shp');

for index = 1:length(Fires_all)
    for index2 = 1:length(Fires_all(index).X)
        if ~isnan(Fires_all(index).X(index2))
            Fires_all(index).X(index2) = Fires_all(index).X(index2)/100000+13.5;
        end
    end
    for index2 = 1:length(Fires_all(index).Y)
        if ~isnan(Fires_all(index).Y(index2))
            Fires_all(index).Y(index2) = Fires_all(index).Y(index2)/100000-6.5;
        end
    end
end
            


[Z,C11,CMN,mima,colmap,colrange]=CaliforniaSRTM;

% Set scale of California topo map sections
eX=linspace(C11(1),CMN(1),size(Z,2));
eY=linspace(C11(2),CMN(2),size(Z,1));
