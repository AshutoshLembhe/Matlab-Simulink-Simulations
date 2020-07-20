clc
clear all
z=40+j*125;
y=0.001;
Length=300;
As=-acos(0.8);
Vs3ph=220;
Vs=Vs3ph/sqrt(3)+j*0;
Is=0.227*(cos(As)+j*sin(As));
A = 1 + z*y/2;  B = z; 
C = y*(1 + z*y/4);  D = A; 
 
ABCD = [A B; C D]; 
VrIr=inv(ABCD)*[Vs;Is];
Vr=VrIr(1);
Vr3ph=sqrt(3)*abs(Vr);
Ir=VrIr(2); Irm=1000*abs(Ir);
pfr=cos(angle(Vr)-angle(Ir));
Sr=3*Vr*conj(Ir);
REG=(Vs3ph/abs(ABCD(1,1))-Vr3ph)/Vr3ph*100;
fprintf('Ir=%g A \n',Irm),fprintf('pf=%g \n',pfr)
fprintf('Vr=%g L-L kV \n',Vr3ph)
fprintf('Pr=%g MW \n',real(Sr))
fprintf('Qr=%g Mvar \n',imag(Sr))
fprintf('Percent voltage Reg.= %g \n',REG)
fprintf('         %-11.5g + j', real(A)), fprintf(' %-11.5g', imag(A)) 
fprintf('   %-11.5g + j', real(B)), fprintf(' %-11.5g  \n', imag(B)) 
fprintf(' ABCD =                                                             \n') 
fprintf('         %-11.5g + j', real(C)), fprintf(' %-11.5g', imag(C)) 
fprintf('   %-11.5g + j', real(D)), fprintf(' %-11.5g   \n', imag(D)) 