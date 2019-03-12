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
