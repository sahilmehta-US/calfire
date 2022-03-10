areasOverTime = zeros(1, 40);
numFiresOverTime = zeros(1,40);

S4Center = SCenter(S4);
[S4X, S4Y] = SDistance(S4Center, S4);
polySpecies = polyshape(S4X, S4Y);
Fires = Fires_80_89;
[areasOverTime, numFiresOverTime] = countFireAreas(areasOverTime, numFiresOverTime, polySpecies, S4Center, Fires);
Fires = Fires_90_99;
[areasOverTime, numFiresOverTime] = countFireAreas(areasOverTime, numFiresOverTime, polySpecies, S4Center, Fires);
Fires = Fires_00_09;
[areasOverTime, numFiresOverTime] = countFireAreas(areasOverTime, numFiresOverTime, polySpecies, S4Center, Fires);
Fires = Fires_10_19;
[areasOverTime, numFiresOverTime] = countFireAreas(areasOverTime, numFiresOverTime, polySpecies, S4Center, Fires);
