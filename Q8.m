clear
A=3.7212;
B=0.0149;
C=-4.3013E-6;
D=-1.0542E5;
R=8.314;
P1=39.3001;
P2=39.3001;
T1=663.4345;
T2=922.0389;

Xto=0.04753417;
Xh=0.23767083;
Xme=0.57308378;
Xbi=0.14171123;

%% Residual 1
Tch1=43.6/(1+(21.8/(2.016*T1)));
Pch1=20.5/(1+(44.2/(2.016*T1)));

Tc1=772.16*Xbi+Tch1*Xh+591.8*Xto+190.6*Xme;
Pc1=34.74*Xbi+Pch1*Xh+41.06*Xto+45.99*Xme;

omega=0.012*Xme+0.262*Xto+0.423*Xbi;

Tr1=T1/Tc1;
Pr1=P1/Pc1;

HR01=-0.1264652928;
HR11=0.1677473384;

HR1=HR01+omega*HR11;
H1R=HR1*R*Tc1;

%% Residual 2
Tch2=43.6/(1+(21.8/(2.016*T2)));
Pch2=20.5/(1+(44.2/(2.016*T2)));

Tc2=772.16*Xbi+Tch2*Xh+591.8*Xto+190.6*Xme;
Pc2=34.74*Xbi+Pch2*Xh+41.06*Xto+45.99*Xme;

Tr2=T2/Tc2;
Pr2=P2/Pc2;

HR02=-0.064572294;
HR12=0.1817427012;

HR2=HR02+omega*HR12;
H2R=HR2*R*Tc2;

%% Hig
T0=T1;
dHigR=A*(T2-T0)+B*(T2^2-T0^2)/2+C*(T2^3-T0^3)/3+D*((T2-T0)/(T2*T0));
dHig=dHigR*8.314;

Htotal=-H1R+dHig+H2R;
Htotal=Htotal*952.583738182994/1000;
disp(Htotal)
