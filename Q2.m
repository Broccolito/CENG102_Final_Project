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
