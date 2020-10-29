clear all;

alphap=2;

alphas=20;

wp=[0.2*pi,0.4*pi];

ws=[0.1*pi,0.5*pi];

% To find the cutoff frequency and order of the filter

[n,wn]=buttord(wp/pi,ws/pi,alphap,alphas)

% System function of the filter

[b,a]=butter(n,wn)

w=0:0.01:pi;

[h,ph]=freqz(b,a,w);

m=20*log10(abs(h));

an=angle(h);

subplot(2,1,1), plot(ph/pi,m);grid;

ylabel('Gain in dB');

xlabel('Normalized frequency');

subplot(2,1,2), plot(ph/pi,an);grid;

ylabel('Phase in Radians');

xlabel('Normalized frequency');