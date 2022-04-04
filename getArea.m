clf;

mapshow(S4, 'FaceColor', 'cyan')

A = zeros(1,71);
numFires = zeros(1,71);
p_area = 0;

for index = 1:length(Fires_2020)
    fire = Fires_2020(index);
    for index2 = 1:length(S4)
        polyFire = polyshape(fire.X,fire.Y);
        polySpecies = polyshape(S4(index2).X,S4(index2).Y);
        polyout = intersect(polyFire, polySpecies);
        A(51) = A(51) + area(polyout);
    end
       
end

for index = 1:length(Fires_79_under)
    fire = Fires_79_under(index);
    i = fire.FIRE_YEAR_-1949;
    if (i > 0)
        for index2 = 1:length(S4)
            polyFire = polyshape(fire.X,fire.Y);
            polySpecies = polyshape(S4(index2).X,S4(index2).Y);
            polyout = intersect(polyFire, polySpecies);
            A(i) = A(i) + area(polyout);
        end
    end
end

for index = 1:length(Fires_80_89)
    fire = Fires_80_89(index);
    i = str2num(fire.FIRE_YEAR)-1949;
    if (i > 0)
        for index2 = 1:length(S4)
            polyFire = polyshape(fire.X,fire.Y);
            polySpecies = polyshape(S4(index2).X,S4(index2).Y);
            polyout = intersect(polyFire, polySpecies);
            A(i) = A(i) + area(polyout);
        end
    end
end

for index = 1:length(Fires_90_99)
    fire = Fires_90_99(index);
    i = str2num(fire.FIRE_YEAR)-1949;
    if (i > 0)
        for index2 = 1:length(S4)
            polyFire = polyshape(fire.X,fire.Y);
            polySpecies = polyshape(S4(index2).X,S4(index2).Y);
            polyout = intersect(polyFire, polySpecies);
            A(i) = A(i) + area(polyout);
        end
    end
end

for index = 1:length(Fires_00_09)
    fire = Fires_00_09(index);
    i = str2num(fire.FIRE_YEAR)-1949;
    if (i > 0)
        for index2 = 1:length(S4)
            polyFire = polyshape(fire.X,fire.Y);
            polySpecies = polyshape(S4(index2).X,S4(index2).Y);
            polyout = intersect(polyFire, polySpecies);
            A(i) = A(i) + area(polyout);
        end
    end
end

for index = 1:length(Fires_10_19)
    fire = Fires_10_19(index);
    i = str2num(fire.FIRE_YEAR)-1949;
    if (i > 0)
        for index2 = 1:length(S4)
            polyFire = polyshape(fire.X,fire.Y);
            polySpecies = polyshape(S4(index2).X,S4(index2).Y);
            polyout = intersect(polyFire, polySpecies);
            A(i) = A(i) + area(polyout);
        end
    end
end

for index = 1:length(A)
    disp(A(index))
end