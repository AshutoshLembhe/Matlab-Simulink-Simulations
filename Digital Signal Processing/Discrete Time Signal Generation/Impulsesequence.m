%impulse Sequnce
clc
clear all
a=input('Enter the desired length of the sequence =');
b=input('Enter the sampling=');
x=-a:1:a;
y=[zeros(b,a) ones(b,b) zeros(1,a-1)];
stem(x,y);
xlabel('time index');
ylabel('Amplitude');
disp y;
title('generation of unit impulse sequence')
%length=10, b=2
