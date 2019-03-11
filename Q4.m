%%For toluene
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
dHigR=A*(Ta-T0)+B/2*(Ta^2-T0^2)+D*((Ta-T0)/(Ta*T0)) + (C/3)*(Ta^3 - T0^3);
dHig=dHigR*8.314;
dHigreal=dHig/0.75;
% find work
work=dHigreal*33.96;
work_in_kw = work / 1000; %KW
 
%%
% find real T, iterate again
Ta = 600;
Tg1=Ta;
CpHR=A+B/2*(Tg1+Ta)+D/(Tg1*Ta);
dHigrealR=dHigreal/R;
Tf1=dHigrealR/CpHR+Ta;
CpHR1=A+B/2*(Tf1+Ta)+D/(Tf1*Ta);
Tf2=dHigrealR/CpHR1+Ta;
CpHR2=A+B/2*(Tf2+Ta)+D/(Tf2*Ta);
Tf3=dHigrealR/CpHR2+Ta;
CpHR2=A+B/2*(Tf3+Ta)+D/(Tf3*Ta);
Tf4=dHigrealR/CpHR2+Ta;

disp("Tf " + Tf4 + " K")
disp("Work: " + work_in_kw + "kW")
