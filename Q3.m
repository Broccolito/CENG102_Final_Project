%For Liquid Toluene A,B,C
l_toluene = [15.133 6.79 16.35];

%For Toluene latent heat
Pc = 41.06; %Bar
Tn = 383.75; %K
Tc = 591.79; %K

Trn = Tn/Tc;    
Tr = 283.15/Tc;

riedel_h = riedel(Pc, Tn, Tc);
watson_h = riedel_h * ((1-Tr)/(1-Trn))^0.38;

molar_feed = 33.9602;
h2 = watson_h * molar_feed / 1000;

R = 8.314;
deltaT = 600 - 110.6 - 273.15;
h3 = R * deltaT;

function riedel_h = riedel(Pc, Tn, Tc)
R = 8.314;
riedel_h = 1.092 * R * Tn * (log(Pc) - 1.013)/(0.93 - (Tn/Tc));
end