% Compile California topo map
imagesc(linspace(C11(1),CMN(1),size(Z,2)), linspace(C11(2),CMN(2),size(Z,1)), Z)
set(gca,'YDir', 'normal')

hold on