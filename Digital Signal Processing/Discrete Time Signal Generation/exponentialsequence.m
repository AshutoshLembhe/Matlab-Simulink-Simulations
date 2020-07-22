%Exponential Sequence
clc
clear all
a=input('Enter the sequence lenght');
n=0:a-1;
x2=exp(-n);
subplot(2,2,3),stem(n,x2);
xlabel('n'),ylabel('x2(n)');
title('Exponential sequence decreasing');