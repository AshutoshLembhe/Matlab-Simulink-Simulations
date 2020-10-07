clear all
wc1=0.25*pi;
wc2=0.75*pi;
N=25;
alpha=(N-1)/2
eps=0.001;
n=0:1:N-1;
hd=sin(wc2*(n-alpha+eps))-sin(wc1*(n-alpha+eps))./(pi*(n-alpha+eps));
wr=boxcar(N);
hn=hd.*wr';
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on
wh=hamming(N);
hn=hd.*wh';
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'-.');
grid;
xlabel('Normalized Frequency\omega\pi');
ylabel('Magnitud');
hold off