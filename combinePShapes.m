function [s] = combinePShapes(S)
    s = polyshape.empty(0);
    for index = 1:length(S)
        pgon = polyshape(S(index).X, S(index).Y);
        s(index) = pgon;
    end
end