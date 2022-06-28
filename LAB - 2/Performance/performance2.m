fs = 10000;
t = 0:1/fs:0.1; 
x1=7*cos(2*pi*12*t); 
x2=5*sin(2*pi*5*t); 
x3=12*cos(2*pi*7*t); 
signal_x=x1+x2+x3; 
partition = -3.5:3.5; 
codebook = -4:4; 
[index,quants] = quantiz(signal_x,partition,codebook); 
plot(t,signal_x,'x',t,quants,'*','linewidth',2) 
xlabel('Time in Second') 
ylabel('Amplitude in Volts') 
title('Quantization (Id:20-41991-1, SL:11)') 
legend('Original signal','Quantized signal');