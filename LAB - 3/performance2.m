A=2;
B=0;
C=4;
D=3;
E=3;
F=1;
G=3;
H=1;
A1 = (A+B+H);
A2 = (B+C+H);
s =(C+D+H)/30;

fs = 5000;
t = 0:1/fs:3;
x = A1*sin(2*pi*((C+D+H)*100)*t) + A2*cos(2*pi*((D+E+H)*100)*t) + s*randn(size(t));
sig_nt = s*randn (size (x));
snr_mat = snr (x, sig_nt);
ps = 3^2/2 + 5^2/2;
pn = s^2;
snr_theory = 10*log10(ps/pn);
comp = [snr_mat snr_theory]