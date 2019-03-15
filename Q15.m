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
