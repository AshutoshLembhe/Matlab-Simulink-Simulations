clear all;

alphap=0.4

alphas=30;

fp=400;

fs=800;

F=2000;

omp=2*fp/F; oms=2*fs/F;

% To find the cutoff frequency and order of the filter

[n,wn]=buttord(omp,oms,alphap,alphas)

% System function of the filter

[b,a]=butter(n,wn)

w=0:0.1:pi;

[h,om]=freqz(b,a,w,'whole');

m=abs(h);

an=angle(h);

subplot(2,1,1), plot(om/pi,20*log(m));grid;

ylabel('Gain in dB');

xlabel('Normalized frequency');

subplot(2,1,2), plot(om/pi,an);grid;

ylabel('Phase in Radians');

xlabel('Normalized frequency');