clear
Kto=0.00211577; Kh=433.816504; Kbe=0.00651267; Kme=12.8652437; Kbi=3.25E-06;
P=33.3706;
Ptosat=P*Kto;
Phsat=P*Kh;
Pbesat=P*Kbe;
Pmesat=P*Kme;
Pbisat=P*Kbi;

syms a b c d e v

eq1 = (0.01188354-a)*(-0.7970885 * b) == (0.20291147-b)*(-0.9881165 * a);
eq2 = (0.01188354-a)*(-0.9661319 * c) == (0.03386809-c)*(-0.9881165 * a);
eq3 = (0.01188354-a)*(-0.3912656 * d) == (0.6087344-d)*(-0.9881165 * a);
eq4 = (0.01188354-a)*(-0.8573975 * e) == (0.1426025-e)*(-0.9881165 * a);
eq5 = 0.0706 * a + 14477 * b + 0.2173 * c + 429.3209 * d + 0.00010845 * e == 33.3706;

sol=solve([eq1,eq2,eq3,eq4,eq5],a,b,c,d,e);
aSol = sol.a;
bSol = sol.b;
cSol = sol.c;
dSol = sol.d;
eSol = sol.e;

aSol = double(aSol);
bSol = double(bSol);
cSol = double(cSol);
dSol = double(dSol);
eSol = double(eSol);

aSol
%bSol
%cSol
%dSol
%eSol

%%Longest Equation that I have ever seen
eq5 = (11.3200682/(v + (952.58378 - v) * (1/0.00211577))) + (193.290164/(v + (952.58378 - v) * (1/433.816504))) + (32.2621943/(v + (952.58378 - v) * (1/0.00651267))) + (579.870493/(v + (952.58378 - v) * (1/12.8652437))) + (135.840818/(v + (952.58378 - v) * (1/3.25e-6))) == 1; 
sol = solve(eq5, v);
%3 Possible values for sol
double(sol)


%ans =
%
%  -21.9959
%  762.9830
%  952.5838
%  954.4344
%  957.7717
  