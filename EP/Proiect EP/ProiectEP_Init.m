clc
clear
close all


%Date
Uin = 48;       % V
Uout = 10;      % V
L = 0.001405155; % H
C = 0.00078125;   % F
R = 0.4;         % Ohm
f = 1500;        % Hz
miu = 0.208;     % Duty cycle

Lr=0.002;
Cr=0.00001;
ovsh = log(0.02);
tr = 0.02;
tita = ovsh/sqrt(ovsh^2 + pi^2);
wn = 4/(tita*tr);
