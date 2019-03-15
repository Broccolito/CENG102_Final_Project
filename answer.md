#Q1

```Matlab
A=3.249;
B=0.422E-3;
C=0;
D=0.083E+5;
T0=283.15; %K
R = 8.314;
P1=1;
P2=33.3706;

% iteration for Ta
Tg=1.01*T0;
CpsR=A+(B+(C+D/(Tg^2*T0^2))*((Tg+T0)/2))*(Tg-T0)/(log(Tg/T0));
a=log(P2/P1);;
T1=T0*exp(a/CpsR);
CpsR1=A+(B+(C+D/(T1^2*T0^2))*((T1+T0)/2))*(T1-T0)/(log(T1/T0));
T2=T0*exp(a/CpsR1);
CpsR2=A+(B+(C+D/(T2^2*T0^2))*((T2+T0)/2))*(T2-T0)/(log(T2/T0));
T3=T0*exp(a/CpsR2);
Ta=T3;
dHigR=A*(Ta-T0)+B/2*(Ta^2-T0^2)+D*((Ta-T0)/(Ta*T0));
dHig=dHigR*8.314;
dHigreal=dHig/0.8;
% find work
work=dHigreal*44.4312676;
work_in_kw = work / 1000; %KW
% work_in_kw= 791.4405
 
%%
% find real T, iterate again
Ta = 283.15; %K
Tg1=Ta;
CpHR=A+B/2*(Tg1+Ta)+D/(Tg1*Ta);
dHigrealR=dHigreal/R;
Tf1=dHigrealR/CpHR+Ta;
CpHR1=A+B/2*(Tf1+Ta)+D/(Tf1*Ta);
Tf2=dHigrealR/CpHR1+Ta;
CpHR2=A+B/2*(Tf2+Ta)+D/(Tf2*Ta);
Tf3=dHigrealR/CpHR2+Ta;
 
disp("Tf3 " + Tf3 + " K")

%Tf3 890.1836K

%%Q1_EC

A=3.249;
B=0.422E-3;
C=0;
D=0.083E+5;
T0=283.15; %K
R = 8.314;
P1=9;
P2=27;

% iteration for Ta
Tg=1.01*T0;
CpsR=A+(B+(C+D/(Tg^2*T0^2))*((Tg+T0)/2))*(Tg-T0)/(log(Tg/T0));
a=log(P2/P1);
T1=T0*exp(a/CpsR);
CpsR1=A+(B+(C+D/(T1^2*T0^2))*((T1+T0)/2))*(T1-T0)/(log(T1/T0));
T2=T0*exp(a/CpsR1);
CpsR2=A+(B+(C+D/(T2^2*T0^2))*((T2+T0)/2))*(T2-T0)/(log(T2/T0));
T3=T0*exp(a/CpsR2);
Ta=T3;
dHigR=A*(Ta-T0)+B/2*(Ta^2-T0^2)+D*((Ta-T0)/(Ta*T0));
dHig=dHigR*8.314;
dHigreal=dHig/0.8;
% find work
work=dHigreal*44.4312676;
work_in_kw = work / 1000; %KW
% work_in_kw= 791.4405
 
%%
% find real T, iterate again
Tg1=Ta;
CpHR=A+B/2*(Tg1+T0)+D/(Tg1*T0);
dHigrealR=dHigreal/R;
Tf1=dHigrealR/CpHR+T0;
CpHR1=A+B/2*(Tf1+T0)+D/(Tf1*T0);
Tf2=dHigrealR/CpHR1+T0;
CpHR2=A+B/2*(Tf2+T0)+D/(Tf2*T0);
Tf3=dHigrealR/CpHR2+T0;
 
disp("Tf3 " + Tf3 + " K")
disp("Work: " + work_in_kw + "kW")

%Tf3 890.1836K


```

#Q1_EC

```Matlab
A=3.249;
B=0.422E-3;
C=0;
D=0.083E+5;
T0=283.15; %K
R = 8.314;
P1=9;
P2=27;

% iteration for Ta
Tg=1.01*T0;
CpsR=A+(B+(C+D/(Tg^2*T0^2))*((Tg+T0)/2))*(Tg-T0)/(log(Tg/T0));
a=log(P2/P1);
T1=T0*exp(a/CpsR);
CpsR1=A+(B+(C+D/(T1^2*T0^2))*((T1+T0)/2))*(T1-T0)/(log(T1/T0));
T2=T0*exp(a/CpsR1);
CpsR2=A+(B+(C+D/(T2^2*T0^2))*((T2+T0)/2))*(T2-T0)/(log(T2/T0));
T3=T0*exp(a/CpsR2);
Ta=T3;
dHigR=A*(Ta-T0)+B/2*(Ta^2-T0^2)+D*((Ta-T0)/(Ta*T0));
dHig=dHigR*8.314;
dHigreal=dHig/0.8;
% find work
work=dHigreal*44.4312676;
work_in_kw = work / 1000; %KW
% work_in_kw= 791.4405
 
%%
% find real T, iterate again
Ta = 283.15; %K
Tg1=Ta;
CpHR=A+B/2*(Tg1+Ta)+D/(Tg1*Ta);
dHigrealR=dHigreal/R;
Tf1=dHigrealR/CpHR+Ta;
CpHR1=A+B/2*(Tf1+Ta)+D/(Tf1*Ta);
Tf2=dHigrealR/CpHR1+Ta;
CpHR2=A+B/2*(Tf2+Ta)+D/(Tf2*Ta);
Tf3=dHigrealR/CpHR2+Ta;
 
disp("Tf3 " + Tf3 + " K")
disp("Work: " + work_in_kw + "kW")

%Tf3 890.1836K
```

#Q2

```Matlab
A=3.249;
B=0.422E-3;
C=0;
D=0.083E+5;
T0=283.15; %K
R = 8.314;
P1=1;
P2=33.3706;

% iteration for Ta
Tg=1.01*T0;
CpsR=A+(B+(C+D/(Tg^2*T0^2))*((Tg+T0)/2))*(Tg-T0)/(log(Tg/T0));
a=log(P2/P1);;
T1=T0*exp(a/CpsR);
CpsR1=A+(B+(C+D/(T1^2*T0^2))*((T1+T0)/2))*(T1-T0)/(log(T1/T0));
T2=T0*exp(a/CpsR1);
CpsR2=A+(B+(C+D/(T2^2*T0^2))*((T2+T0)/2))*(T2-T0)/(log(T2/T0));
T3=T0*exp(a/CpsR2);
Ta=T3;
dHigR=A*(Ta-T0)+B/2*(Ta^2-T0^2)+D*((Ta-T0)/(Ta*T0));
dHig=dHigR*8.314;
dHigreal=dHig/0.8;
% find work
work=dHigreal*44.4312676;
work_in_kw = work / 1000; %KW
% work_in_kw= 791.4405
 
%%
% find real T, iterate again
Ta = 283.15; %K
Tg1=Ta;
CpHR=A+B/2*(Tg1+Ta)+D/(Tg1*Ta);
dHigrealR=dHigreal/R;
Tf1=dHigrealR/CpHR+Ta;
CpHR1=A+B/2*(Tf1+Ta)+D/(Tf1*Ta);
Tf2=dHigrealR/CpHR1+Ta;
CpHR2=A+B/2*(Tf2+Ta)+D/(Tf2*Ta);
Tf3=dHigrealR/CpHR2+Ta;
 
disp("Tf3 " + Tf3 + " K")

%Tf3 890.1836K

```

#Q3

```Matlab
Ato=0.29;
Bto=47.052E-3;
Cto=-15.716E-6;
Dto=0;
Tnto=383.8;
Tini=283.15;
Tfi=600;
Tcto=591.8;
Pc=41.06;
nto=33.96020457;
dHR1=Ato*(Tnto-Tini)+Bto/2*(Tnto^2-Tini^2)+Cto*(Tnto^3-Tini^3)/3;
dH1=dHR1*R*nto;
Trnto=Tnto/Tcto;
dHnRTn=1.092*(log(Pc-1.013))/(0.930-Trnto);
dH2=dHnRTn*R*Tnto*nto;
dHR3=Ato*(Tfi-Tnto)+Bto/2*(Tfi^2-Tnto^2)+Cto*(Tfi^3-Tnto^3)/3;
dH3=dHR3*R*nto;
dHtotal=dH1+dH2+dH3;
dHtotal_in_kw=dHtotal/1000;
disp(dHtotal_in_kw)
%total heat required is 3150.1 KW.
```

#Q4

```Matlab

A = 0.29;
B = 47.052E-3;
C = -15.716E-6;
D = 0;
T0= 600; %K
R = 8.314;
P1 = 1; %Bar
P2 = 33.3706; %Bar = 484 psia
 
% iteration for Ta
Tg=1.01*T0;
CpsR=A+(B+(C+D/(Tg^2*T0^2))*((Tg+T0)/2))*(Tg-T0)/(log(Tg/T0));
a=log(P2/P1);
T1=T0*exp(a/CpsR);
CpsR1=A+(B+(C+D/(T1^2*T0^2))*((T1+T0)/2))*(T1-T0)/(log(T1/T0));
T2=T0*exp(a/CpsR1);
CpsR2=A+(B+(C+D/(T2^2*T0^2))*((T2+T0)/2))*(T2-T0)/(log(T2/T0));
T3=T0*exp(a/CpsR2);
Ta=T3;
dHigR=A*(Ta-T0)+B/2*(Ta^2-T0^2)+(C/3)*(Ta^3 - T0^3);
dHig=dHigR*8.314;
dHigreal=dHig/0.75;
% find work
work=dHigreal*33.9602046;
work_in_kw = work / 1000; %KW
 
%%
% find real T, iterate again
Ta = 600;
Tg1=Ta;
CpHR=A+B/2*(Tg1+Ta)+C/3*(Tg1^2+Tg1*Ta+Ta^2);
dHigrealR=dHigreal/R;
Tf1=dHigrealR/CpHR+Ta;
CpHR1=A+B/2*(Tf1+Ta)+C/3*(Tf1^2+Tf1*Ta+Ta^2);
Tf2=dHigrealR/CpHR1+Ta;
CpHR2=A+B/2*(Tf2+Ta)+C/3*(Tf2^2+Tf2*Ta+Ta^2);
Tf3=dHigrealR/CpHR2+Ta;
CpHR2=A+B/2*(Tf3+Ta)+C/3*(Tf3^2+Tf3*Ta+Ta^2);
Tf4=dHigrealR/CpHR2+Ta;
 
%%Tf 723.3461 K
%%Work: 854.0413kW


```

#Q7

```Matlab

Amix=3.7212;
Bmix=0.0149;
Cmix=-4.3013E-6;
Dmix=-1.0542E+5;
T0= 662.97; %K
R = 8.314;
P1=33.3706;
P2=39.3001;
 % iteration for Ta
Tg=1.01*T0;
CpsR=Amix+(Bmix+(Cmix+Dmix/(Tg^2*T0^2))*((Tg+T0)/2))*(Tg-T0)/(log(Tg/T0));
a=log(P2/P1);
T1=T0*exp(a/CpsR);
CpsR1=Amix+(Bmix+(Cmix+Dmix/(T1^2*T0^2))*((T1+T0)/2))*(T1-T0)/(log(T1/T0));
T2=T0*exp(a/CpsR1);
CpsR2=Amix+(Bmix+(Cmix+Dmix/(T2^2*T0^2))*((T2+T0)/2))*(T2-T0)/(log(T2/T0));
T3=T0*exp(a/CpsR2);
Ta=T3;
dHigR=Amix*(Ta-T0)+Bmix/2*(Ta^2-T0^2)+Cmix/3*(Ta^3-T0^3)+Dmix*((Ta-T0)/(Ta*T0));
dHig=dHigR*8.314;
dHreal=dHig/0.85;
% find work
work=dHreal*952.5837382;
work_in_kw = work/1000; %KW
%work_in_kw= 1123.8 KW
%%
% find real T, iterate again
Tg1=Ta;
dHrealR = dHreal/8.314;
CpHR=Amix+Bmix/2*(Tg1+T0)+Cmix/3*(Tg1^2+Tg1*T0+T0^2)+Dmix/(Tg1*T0);
Tf1=dHrealR/CpHR+T0;
CpHR1=Amix+Bmix/2*(Tf1+T0)+Cmix/3*(Tf1^2+Tf1*T0+T0^2)+Dmix/(Tf1*T0);
Tf2=dHrealR/CpHR1+T0;
 
%%Tf=674.1184K 


```

#Q8


```Matlab

A=3.7212;
B=0.0149;
C=-4.3013E-6;
D=-1.0542E5;
R=8.314;
P1=39.3001;
P2=39.3001;
T1=674.1184;
T2=922.0389;
 
Xto=0.047534165181224;
Xh=0.23767082590612;
Xme=0.573083778966132;
Xbi=0.141711229946524;
 
%% Residual 1
Tch1=43.6/(1+(21.8/(2.016*T1)));
Pch1=20.5/(1+(44.2/(2.016*T1)));
 
Tc1=772.16*Xbi+Tch1*Xh+591.8*Xto+190.6*Xme;
Pc1=34.74*Xbi+Pch1*Xh+41.06*Xto+45.99*Xme;
 
omega=0.012*Xme+0.262*Xto+0.423*Xbi;
 
Tr1=T1/Tc1;
Pr1=P1/Pc1;
 
HR01= -0.157316112;
HR11= 0.135460648;
HR1=HR01+omega*HR11;
H1R=HR1*R*Tc1;
 
%% Residual 2
Tch2=43.6/(1+(21.8/(2.016*T2)));
Pch2=20.5/(1+(44.2/(2.016*T2)));
 
Tc2=772.16*Xbi+Tch2*Xh+591.8*Xto+190.6*Xme;
Pc2=34.74*Xbi+Pch2*Xh+41.06*Xto+45.99*Xme;
 
Tr2=T2/Tc2;
Pr2=P2/Pc2;
 
HR02= -0.0660306075;
HR12= 0.1580802185;
 
HR2=HR02+omega*HR12;
H2R=HR2*R*Tc2;
 
%% Hig
dHigR=A*(T2-T1)+B/2*(T2.^2-T1.^2)+C/3*(T2.^3-T1.^3)+D*(T2-T1)/(T2*T1);
dHig=dHigR*8.314;
 
Htotal=-H1R+dHig+H2R;
Htotal=Htotal*952.583738182994/1000;
disp(Htotal)
%%Heat=2.5089e+04kW



```

#Q9


```Matlab
Ar=3.7212;
Br=0.0149;
Cr=-4.3013E-6;
Dr=-1.0542E5;
T1=922.0389;
T2=960.9278;
T0=298.15;
R=8.314;
nRF=952.583738;nE=nRF;
Hfto=50170; Hfme=-74520; Hfbe=82930; Hfbi=1.8E5;
H0rxn1=Hfbe+Hfme-Hfto;
H0rxn2=Hfbi-2*Hfbe;
si1=33.9602046;
si2=0.84900511;
Htrxn1=H0rxn1*si1;
Htrxn2=H0rxn2*si2;
dHigR1=Ar*(T0-T1)+Br*(T0^2-T1^2)/2+Cr*(T0^3-T1^3)/3+Dr*((T0-T1)/(T0*T1));
dHig1=dHigR1*R*nRF;
yEto=0.011883541;
yEh=0.202911468;
yEbe=0.033868093;
yEme=0.608734403;
yEbi=0.142602496;
Ato=0.290;Bto=47.052E-3;Cto=-15.716E-6;Dto=0;
Abi=13.83;Bbi=51.7E-3;Cbi=-16.33E-6;Dbi=-7.578E5;
Ah=3.249;Bh=0.422E-3;Ch=0;Dh=0.083E5;
Ame=1.702;Bme=9.081E-3;Cme=-2.164E-6;Dme=0;
Abe=-0.206;Bbe=39.064E-3;Cbe=-13.301E-6;Dbe=0;
AE=yEto*Ato+yEh*Ah+yEbe*Abe+yEme*Ame+yEbi*Abi;
BE=yEto*Bto+yEh*Bh+yEbe*Bbe+yEme*Bme+yEbi*Bbi;
CE=yEto*Cto+yEh*Ch+yEbe*Cbe+yEme*Cme+yEbi*Cbi;
DE=yEto*Dto+yEh*Dh+yEbe*Dbe+yEme*Dme+yEbi*Dbi;
dHigR2=AE*(T2-T0)+BE*(T2^2-T0^2)/2+CE*(T2^3-T0^3)/3+DE*((T2-T0)/(T2*T0));
dHig2=dHigR2*R*nE;
dHtotal=dHig1+dHig2+Htrxn1+Htrxn2;
dHtotal_in_kw=dHtotal/1000;
disp(dHtotal_in_kw)
% dHtotal_in_kw=2466.7 KW


```


#Q10


```Matlab

T0=298.15;
dHig2a=-dHig1-Htrxn1-Htrxn2;
dHig2pm=dHig2a/nE;
Tg1=T0;
CpHR=AE+BE/2*(Tg1+T0)+CE/3*(Tg1^2+Tg1*T0+T0^2)+DE/(Tg1*T0);
dHig2pmR=dHig2pm/R;
Tf1=dHig2pmR/CpHR+T0;
CpHR1=AE+BE/2*(Tf1+T0)+CE/3*(Tf1^2+Tf1*T0+T0^2)+DE/(Tf1*T0);
Tf2=dHig2pmR/CpHR1+T0;
CpHR2=AE+BE/2*(Tf2+T0)+CE/3*(Tf2^2+Tf2*T0+T0^2)+DE/(Tf2*T0);
Tf3=dHig2pmR/CpHR2+T0;
CpHR3=AE+BE/2*(Tf3+T0)+CE/3*(Tf3^2+Tf3*T0+T0^2)+DE/(Tf3*T0);
Tf4=dHig2pmR/CpHR3+T0;
CpHR4=AE+BE/2*(Tf4+T0)+CE/3*(Tf4^2+Tf4*T0+T0^2)+DE/(Tf4*T0);
Tf5=dHig2pmR/CpHR4+T0;
CpHR5=AE+BE/2*(Tf5+T0)+CE/3*(Tf5^2+Tf5*T0+T0^2)+DE/(Tf5*T0);
Tf6=dHig2pmR/CpHR5+T0;
disp(Tf6)

%Tf6=937.7692 K


```


#Q12


```Matlab
%%Q12_A
AE=3.664; BE=0.0149; CE=-4.2832E-6; DE=-1.0638E5;
PE=39.3001;
PS=33.3706;
yEto=0.011883541;
yEh=0.202911468;
yEbe=0.033868093;
yEme=0.608734403;
yEbi=0.142602496;
TE=960.9278;
Tcto=591.8; Pcto=41.06; wto=0.262;
Tcbe=562.2; Pcbe=48.98; wbe=0.21;
Tcme=190.6; Pcme=45.99; wme=0.012;
Tcbi=772.16; Pcbi=34.74; wbi=0.423;
Tch=43.6/(1+(21.8/(2.016*TE)));
Pch=20.5/(1+(44.2/(2.016*TE)));
wh=0;
Tcmix=yEto*Tcto+yEh*Tch+yEbe*Tcbe+yEme*Tcme+yEbi*Tcbi;
Pcmix=yEto*Pcto+yEh*Pch+yEbe*Pcbe+yEme*Pcme+yEbi*Pcbi;
wmix=yEto*wto+yEh*wh+yEbe*wbe+yEme*wme+yEbi*wbi;
TrE=TE/Tcmix;
PrE=PE/Pcmix;
PrS=PS/Pcmix;
% from interpolation of tables
HR0RTc1=-0.0589692975;
HR1RTc1=0.1547014805;
HR0RTc2=-0.0505258085;
HR1RTc2=0.1317329783;
HRRTC1=HR0RTc1+wmix*HR1RTc1;
HRRTC2=HR0RTc2+wmix*HR1RTc2;
HR1=HRRTC1*R*Tcmix;
HR2=HRRTC2*R*Tcmix;
dHig11=HR1-HR2;            
%assume temperature Tgu=TE(exhaust temperature)
Tgu=TE;
CpHR=AE+BE/2*(Tgu+TE)+CE/3*(Tgu^2+Tgu*TE+TE^2)+DE/(Tgu*TE);
dHig11R=dHig11/R;
TS1=dHig11/CpHR+TE;
disp(TS1)


%%Q12_B

%%Part B
AE=3.664; 
BE=0.0149; 
CE=-4.2832E-6; 
DE=-1.0638E5;
nE=952.583738;
PE=39.3001;
PS=33.3706;
TE=960.9278;
Tgue=1.01*TE;
R=8.314
CpsR=AE+(BE+(CE+DE/(Tgue^2*TE^2))*((Tgue+TE)/2))*(Tgue-TE)/(log(Tgue/TE));
a=log(PS/PE);
Tturb1=TE*exp(a/CpsR);
CpsR1=AE+(BE+(CE+DE/(Tturb1^2*TE^2))*((Tturb1+TE)/2))*(Tturb1-TE)/(log(Tturb1/TE));
Tturb2=TE*exp(a/CpsR1);
Tturb=Tturb2;
dHigturbR=AE*(Tturb-TE)+BE/2*(Tturb^2-TE^2)+CE*(Tturb^3-TE^3)/3+DE*((Tturb-TE)/(Tturb*TE));
dHigturb=dHigturbR*8.314;
dHrealturb=dHigturb*0.8;
workturb=dHrealturb*nE;
work_in_kw=workturb/1000;
disp(work_in_kw)
%work extracted is the absolute value of work_in_kw, which is 989.8919 KW.
 
% find real T, iterate again
Tturba = TE; 
Tgues=Tturba;
CpHturbR=AE+BE/2*(Tgues+TE)+CE/3*(Tgues^2+Tgues*TE+TE^2)+DE/(Tgues*TE);
dHrealturbR=dHrealturb/R;
Tl1=dHrealturbR/CpHturbR+TE;
CpHturbR1=AE+BE/2*(Tl1+TE)+CE/3*(Tl1^2+Tl1*TE+TE^2)+DE/(Tl1*TE);
Tl2=dHrealturbR/CpHturbR1+TE;
CpHturbR2=AE+BE/2*(Tl2+TE)+CE/3*(Tl2^2+Tl2*TE+TE^2)+DE/(Tl2*TE);
Tl3=dHrealturbR/CpHturbR2+TE;
disp(Tl3)
%Final Temperature is 951.923 K


```

#Q13


```Matlab

clear
%%part b
K1=0.00211577;
K2=433.816504;
K3=0.00651267;
K4=12.8652437;
K5=3.25e-06;

z1=0.011883541;
z2=0.202911468;
z3=0.033868093;
z4=0.608734403;
z5=0.142602496;

q=0.801279;
V=763.285345;
L=189.298393;
F=952.583738;

x1=z1/(1+q*(K1-1));
x2=z2/(1+q*(K2-1));
x3=z3/(1+q*(K3-1));
x4=z4/(1+q*(K4-1));
x5=z5/(1+q*(K5-1));

y1=K1*x1;
y2=K2*x2;
y3=K3*x3;
y4=K4*x4;
y5=K5*x5;

%% part c
Rh2=y2*V/(F*z2);
Rme=y4*V/(F*z4);

disp("Rh2: " + Rh2)
disp("Rme: " + Rme)

%% part d
Rto=x1*L/(F*z1);
Rbe=x3*L/(F*z3);
Rbi=x5*L/(F*z5);

disp("Rto: " + Rto)
disp("Rbe: " + Rbe)
disp("Rbi: " + Rbi)


```


#Q14


```Matlab

clear
%%part b
K1=0.018101196;
K2=433.473936;
K3=0.044197071;
K4=21.9651996;
K5=0.000115013;

z1=0.059294277418480;
z2=5.834028612676449e-04;
z3=0.166069342600917;
z4=0.057934037523364;
z5=0.717592138111170;

q=0.0156422;
F=189.298393;
V=F*q;
L=F-V;

x1=z1/(1+q*(K1-1));
x2=z2/(1+q*(K2-1));
x3=z3/(1+q*(K3-1));
x4=z4/(1+q*(K4-1));
x5=z5/(1+q*(K5-1));

y1=K1*x1;
y2=K2*x2;
y3=K3*x3;
y4=K4*x4;
y5=K5*x5;


```


#Q15


```Matlab
%part a and b
A_to=13.932; B_to=3056.96; C_to=217.625;
A_bi=14.6372; B_bi=4576.67; C_bi=201.594;
T=260;
Psat_to=exp(A_to-B_to/(C_to+T));
Psat_bi=exp(A_bi-B_bi/(C_bi+T));
P=200;
x_to=(P-Psat_bi)/(Psat_to-Psat_bi);
x_bi=1-x_to;
y_to=x_to*Psat_to/P;
y_bi=1-y_to;
z_to=0.08;
z_bi=0.92;
k=(z_to-x_to)/(y_to-x_to);
F=140;
V=k*F;
L=(1-k)*F;
% x of toluene is 0.0499; x of biphneyl is 0.9501
% y of tulenee is 0.4660; y of biphneyl is 0.5340
% total vapor molar flow rate is 10.1175 mol/s
% total liquid molar flow rate is 129.8825 mol/s

%Part C
xbi=0.99;
xto=1-xbi;
A_to=13.932; B_to=3056.96; C_to=217.625;
A_bi=14.6372; B_bi=4576.67; C_bi=201.594;
T=260;
Psat_to=exp(A_to-B_to/(C_to+T));
Psat_bi=exp(A_bi-B_bi/(C_bi+T));
P_rqd=xto*Psat_to+xbi*Psat_bi;
yto=xto*Psat_to/P_rqd;
ybi=1-yto;
zto=0.08;
zbi=0.92;
k_b=(zbi-xbi)/(ybi-xbi);
F=140;
V_b=k_b*F;
L_b=(1-k_b)*F;
% Pressure required is 1.3 bar
% Vapor fraction of toluene 0.1436 
% Vapor fraction of biphneyl is 0.8564
% Total liquid flow rate is 66.6451 mol/s
% Total vapor flow rate is 73.3549 mol/s


```


















