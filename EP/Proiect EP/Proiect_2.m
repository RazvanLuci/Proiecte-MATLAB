    clc
clear
close all

Uin = 48;       % V
Uout = 10;      % V
L = 1.405155 * 1e-3 ;% H
C = 7.8125* 1e-4;   % F
R = 0.4;         % Ohm
f = 1500;        % Hz
miu = 0.20833;     % Duty cycle
T = 1/f;
%miu = 1; %Tranzistorul Conduce
%miu = 0; %Tranzistorul este blocat 