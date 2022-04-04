areasOverTime = zeros(1, 40);
numFiresOverTime = zeros(1,40);
intersectingFires = cell(1,40);

S4Center = SCenter(S4);
[S4X, S4Y] = SDistance(S4Center, S4);
polySpecies = polyshape(S4X, S4Y);
Fires = Fires_80_89;
[areasOverTime, numFiresOverTime, intersectingFires] = countFireAreas(areasOverTime, numFiresOverTime, intersectingFires, polySpecies, S4Center, Fires);
Fires = Fires_90_99;
[areasOverTime, numFiresOverTime, intersectingFires] = countFireAreas(areasOverTime, numFiresOverTime, intersectingFires, polySpecies, S4Center, Fires);
Fires = Fires_00_09;
[areasOverTime, numFiresOverTime, intersectingFires] = countFireAreas(areasOverTime, numFiresOverTime, intersectingFires, polySpecies, S4Center, Fires);
Fires = Fires_10_19;
[areasOverTime, numFiresOverTime, intersectingFires] = countFireAreas(areasOverTime, numFiresOverTime, intersectingFires, polySpecies, S4Center, Fires);
Fires = Fires_19;
[areasOverTime, numFiresOverTime, intersectingFires] = countFireAreas(areasOverTime, numFiresOverTime, intersectingFires, polySpecies, S4Center, Fires);

areasOverTime2 = zeros(1, 40);
numFiresOverTime2 = zeros(1,40);
intersectingFires2 = cell(1,40);

S5Center = SCenter(S5);
[S5X, S5Y] = SDistance(S5Center, S5);
polySpecies2 = polyshape(S5X, S5Y);
Fires = Fires_80_89;
[areasOverTime2, numFiresOverTime2, intersectingFires2] = countFireAreas(areasOverTime2, numFiresOverTime2, intersectingFires2, polySpecies2, S5Center, Fires);
Fires = Fires_90_99;
[areasOverTime2, numFiresOverTime2, intersectingFires2] = countFireAreas(areasOverTime2, numFiresOverTime2, intersectingFires2, polySpecies2, S5Center, Fires);
Fires = Fires_00_09;
[areasOverTime2, numFiresOverTime2, intersectingFires2] = countFireAreas(areasOverTime2, numFiresOverTime2, intersectingFires2, polySpecies2, S5Center, Fires);
Fires = Fires_10_19;
[areasOverTime2, numFiresOverTime2, intersectingFires2] = countFireAreas(areasOverTime2, numFiresOverTime2, intersectingFires2, polySpecies2, S5Center, Fires);
Fires = Fires_19;
[areasOverTime2, numFiresOverTime2, intersectingFires2] = countFireAreas(areasOverTime2, numFiresOverTime2, intersectingFires2, polySpecies2, S5Center, Fires);

areasOverTime3 = zeros(1, 40);
numFiresOverTime3 = zeros(1,40);
intersectingFires3 = cell(1,40);

S6Center = SCenter(S6);
[S6X, S6Y] = SDistance(S6Center, S6);
polySpecies3 = polyshape(S6X, S6Y);
Fires = Fires_80_89;
[areasOverTime3, numFiresOverTime3, intersectingFires3] = countFireAreas(areasOverTime3, numFiresOverTime3, intersectingFires3, polySpecies3, S6Center, Fires);
Fires = Fires_90_99;
[areasOverTime3, numFiresOverTime3, intersectingFires3] = countFireAreas(areasOverTime3, numFiresOverTime3, intersectingFires3, polySpecies3, S6Center, Fires);
Fires = Fires_00_09;
[areasOverTime3, numFiresOverTime3, intersectingFires3] = countFireAreas(areasOverTime3, numFiresOverTime3, intersectingFires3, polySpecies3, S6Center, Fires);
Fires = Fires_10_19;
[areasOverTime3, numFiresOverTime3, intersectingFires3] = countFireAreas(areasOverTime3, numFiresOverTime3, intersectingFires3, polySpecies3, S6Center, Fires);
Fires = Fires_19;
[areasOverTime3, numFiresOverTime3, intersectingFires3] = countFireAreas(areasOverTime3, numFiresOverTime3, intersectingFires3, polySpecies3, S6Center, Fires);