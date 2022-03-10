function [SCenter] = SCenter(S)
    SCenter = zeros(1,2);
    SCenter(1) = mean(S.BoundingBox(:,1));
    SCenter(2) = mean(S.BoundingBox(:,2));
end