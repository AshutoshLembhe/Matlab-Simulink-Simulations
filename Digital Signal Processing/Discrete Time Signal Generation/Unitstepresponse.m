%Unit Step Response
a=input('enter the lenght of sequence=');
b=input('enter the sampling=');
x=0:b:a-1;
y=cos(2*pi*x);
stem(x,y);
xlabel('time index');
ylabel('amplitude');
title('generation of unit step sequence');
