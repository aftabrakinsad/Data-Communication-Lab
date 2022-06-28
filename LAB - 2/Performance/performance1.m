fs=5000; 
t= 0:1/fs:1; 
x1=7*cos(2*pi*12*t); 
x2=5*sin(2*pi*5*t); 
x3=12*cos(2*pi*7*t); 
signal_x=x1+x2+x3; 
nt=length(t); 
subplot(2,1,1); 
plot(t,signal_x,'linewidth',3); 
xlabel('Time in Second'); 
ylabel('Amplitude in Volts'); 
title('Time Domain Representation (Id:20-41991-1, SL:11)','linewidth',3);
f_signal_x=abs(fftshift(fft(signal_x)))/(nt/2); 
f=linspace(-fs/2,+fs/2,nt); 
subplot(3,1,3); 
bar(f,f_signal_x,'linewidth',3); 
xlim([-20 20]); 
xlabel('Frequency'); 
ylabel('Amplitude in Volts'); 
title('Frequency Domain Representation (Id:20-41991-1, SL:11)','linewidth',3);