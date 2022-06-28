K1 = 2; 
J1 = 22*(pi/180); 
t = 0:0.0002:0.3; %time array 
x1 = K1*cos(2*pi*(9+9+5)*t+J1);
K2 = 4; 
J2 = 30*(pi/180); 
x2 = K2*cos(2*pi*(4+1+5)*t+J2);
x3 = x1+x2;
subplot (3,1,1) 
plot(t,x1,'linewidth',2) 
xlabel('Time in Second (ID:20-41991-1,SL:11)') 
ylabel('Amplitude in Volts') 
title('X1-Signal')
subplot (3,1,2) 
plot(t,x2,'linewidth',2)
xlabel('Time in Second (ID:20-41991-1,SL:11)') 
ylabel('Amplitude in Volts') 
title('X2-Signal')
subplot (3,1,3) 
plot(t,x3,'linewidth',2) 
xlabel('Time in Second (ID:20-41991-1,SL:11)') 
ylabel('Amplitude in Volts') 
title('X3-Signal')