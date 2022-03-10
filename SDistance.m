function [x, y] = SDistance(SCenter, fire)
    x = zeros(1, length(fire.X));
    y = zeros(1, length(fire.Y));
    for index = 1:length(fire.X)
        ymean = (SCenter(2) + fire.Y(index))/2;
        xmean = (SCenter(1) + fire.X(index))/2;
        x(index) = deg2km(distance(ymean, SCenter(1), ymean, fire.X(index)));
        if (SCenter(1) > fire.X(index))
            x(index) = -x(index);
        end
        y(index) = deg2km(distance(SCenter(2), xmean, fire.Y(index), xmean));
        if (SCenter(2) > fire.Y(index))
            y(index) = -y(index);
        end
    end
end