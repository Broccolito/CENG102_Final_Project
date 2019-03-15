P=3337.06;
R=8.314;
A_to=13.932; B_to=3056.96; C_to=217.625;
A_bi=14.6372; B_bi=4576.67; C_bi=201.594;
Tsat_to=B_to/(A_to-log(P))-C_to;
Tsat_bi=B_bi/(A_bi-log(P))-C_bi;
T_to=Tsat_to+100+273.15;
T_bi=Tsat_bi+100+273.15;
T_h=901.3358;
T_to_f=698.1111;
T_LR=310.928;
T_guess=T_LR;
H_LR=0;
Ato=0.290;Bto=47.052E-3;Cto=-15.716E-6;Dto=0;
Abi=13.83;Bbi=51.7E-3;Cbi=-16.33E-6;Dbi=-7.578E5;
Ah=3.249;Bh=0.422E-3;Ch=0;cpmixR4 = 11.69576;Dh=0.083E5;
Ame=1.702;Bme=9.081E-3;Cme=-2.164E-6;Dme=0;
dHR_to=Ato*(T_guess-T_to)+Bto/2*(T_guess^2-T_to^2)+Cto/3*(T_guess^3-T_to^3)+Dto*((T_guess-T_to)/(T_guess*T_to));
dHR_bi=Abi*(T_guess-T_bi)+Bbi/2*(T_guess^2-T_bi^2)+Cbi/3*(T_guess^3-T_bi^3)+Dbi*((T_guess-T_bi)/(T_guess*T_bi));
dHR_h=Ah*(T_guess-T_h)+Bh/2*(T_guess^2-T_h^2)+Ch/3*(T_guess^3-T_h^3)+Dh*((T_guess-T_h)/(T_guess*T_h));
dHR_to_f=Ato*(T_guess-T_to_f)+Bto/2*(T_guess^2-T_to_f^2)+Cto/3*(T_guess^3-T_to_f^3)+Dto*((T_guess-T_to_f)/(T_guess*T_to_f));
dH_to=dHR_to*R*11.32006819;
dH_bi=dHR_bi*R*134.99181316497;
dH_h=dHR_bi*R*44.431267657;
dH_to_f=dHR_to_f*R*33.96020457;
dHcool=dH_to+dH_bi+dH_h+dH_to_f;
y_to=0.047534165;
y_bi=0.14171123;
y_h=0.237670826;
y_me=0.573083779;
Amix=y_to*Ato+y_bi*Abi+y_h*Ah+y_me*Ame;
Bmix=y_to*Bto+y_bi*Bbi+y_h*Bh+y_me*Bme;
Cmix=y_to*Cto+y_bi*Cbi+y_h*Ch+y_me*Cme;
Dmix=y_to*Dto+y_bi*Dbi+y_h*Dh+y_me*Dme;
Tk1=T_LR;
CpmixR=Amix+Bmix/2*(Tk1+T_guess)+Cmix/3*(Tk1^2+Tk1*T_guess+T_guess^2)+Dmix/(Tk1*T_guess);
dH_RF=-dHcool/952.5837382;
dH_RFR=dH_RF/R;
Tk2=dH_RFR/CpmixR+T_guess;
CpmixR1=Amix+Bmix/2*(Tk2+T_guess)+Cmix/3*(Tk2^2+Tk2*T_guess+T_guess^2)+Dmix/(Tk2*T_guess);
Tk3=dH_RFR/CpmixR1+T_guess;
CpmixR2=Amix+Bmix/2*(Tk3+T_guess)+Cmix/3*(Tk3^2+Tk3*T_guess+T_guess^2)+Dmix/(Tk3*T_guess);
Tk4=dH_RFR/CpmixR2+T_guess;
CpmixR3=Amix+Bmix/2*(Tk4+T_guess)+Cmix/3*(Tk4^2+Tk4*T_guess+T_guess^2)+Dmix/(Tk4*T_guess);
Tk5=dH_RFR/CpmixR3+T_guess;
CpmixR4=Amix+Bmix/2*(Tk5+T_guess)+Cmix/3*(Tk5^2+Tk5*T_guess+T_guess^2)+Dmix/(Tk5*T_guess);
Tk6=dH_RFR/cpmixR4+T_guess;

disp(Tk6)
%%Tk6=662.9704K
