a1=2; 
a2=14; 
f1=4; 
f2=19; 
fs = 8000; %Sampling frequency
t=0:1/fs:2; %Time duration
nt=length(t); %Total number of samples
%Signal
signal_x = a1*sin(2*pi*f1*t) + a2*cos(2*pi*f2*t);
subplot(2, 1, 2)
plot(t,signal_x)
xlabel('Time (s)');
ylabel('Amplitude');
title('Time Domain Representaton of Signal');
fx=abs(fftshift(fft(signal_x )))/(nt/2);
f= linspace(-fs/2,fs/2,nt);
subplot(2, 1, 1)
bar(f,fx,'r');
xlim([-20 20 ])
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Domain Representaton of Signal,ID: 20-41991-1,SL 11');
