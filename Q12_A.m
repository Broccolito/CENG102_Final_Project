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
