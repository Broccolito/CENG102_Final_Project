Amix=3.7212;
Bmix=0.0149;
Cmix=-4.3013E-6;
Dmix=-1.0542E+5;
T0=732.5288; %K
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
 
disp(Tf2)
%%Tf3=744.1750K
