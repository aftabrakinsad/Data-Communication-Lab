K1 = 2; 
J1 = 22*(pi/180); 
% t = 0:0.0002:0.3; %time array 
x1 = K1*cos(2*pi*(9+9+5)*t+J1); 
plot(t,x1,'linewidth',2)
hold on
K2 = 4; 
J2 = 30*(pi/180); 
x2 = K2*cos(2*pi*(4+1+5)*t+J2); 
plot(t,x2,'linewidth',3)
x3 = x1+x2; 
plot(t,x3,'linewidth',3.5)
xlabel('Time in Second (ID:20-41991-1,SL:11)') 
ylabel('Amplitude in Volts') 
title('The sum of the two preceding signal') 
legend('X1','X2','X3')