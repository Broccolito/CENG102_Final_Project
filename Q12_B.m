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
