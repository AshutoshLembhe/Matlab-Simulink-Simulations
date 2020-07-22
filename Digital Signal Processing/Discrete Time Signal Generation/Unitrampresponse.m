%unit ramp response
clc
clear all
a=input('enter the lenght of sequennce:');
b=input('enter the sampling:');
x=0:b:a-1;
y=x;
stem(x,y);
xlabel('time index');
ylabel('amplitude');
title('generation of unit ramp sequence');
