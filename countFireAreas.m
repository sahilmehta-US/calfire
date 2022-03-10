function [areasOverTime, numFiresOverTime] = countFireAreas(areasOverTime, numFiresOverTime, polySpecies, SCenter, Fires)
    for i = 1:length(Fires)
        fire = Fires(i);
        fyear = str2num(fire.FIRE_YEAR);
        findex = fyear-1979;
        [fireX, fireY] = SDistance(SCenter, fire);
        polyFire = polyshape(fireX, fireY);
        polyout = intersect(polyFire, polySpecies);
        farea = area(polyout);
        if (farea > 0)
            numFiresOverTime(findex) = numFiresOverTime(findex) + 1;
            areasOverTime(findex) = areasOverTime(findex) + farea;
        end
    end
end