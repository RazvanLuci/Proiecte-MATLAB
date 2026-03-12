clc
clear all
close all

Uin = 48;       % V
Uout = 10;      % V
L = 0.001405155; % H
C = 0.00078125;   % F
R = 0.4;         % Ohm
f = 1500;        % Hz
miu = 0.208;     % Duty cycle
Lreal = 3.68e-3;
Creal = 3.2e-3;


Am = [-1/(R*C), 1/C; -1/L 0];
Bm = [0; Uin/L];
Cm = [1 0];
Dm = 0;

sigma = 0.02;
ts = 0.02;
[num, den] = ss2tf(Am,Bm,Cm,Dm)

Hf = tf(num, den)
zeta = abs(log(sigma))/sqrt(log(sigma)^2+pi^2);
omega = 4/(zeta*ts);

H0 = tf(omega^2, [1 2*zeta*omega omega^2])
Hc = (1/Hf) * (H0/(1-H0))