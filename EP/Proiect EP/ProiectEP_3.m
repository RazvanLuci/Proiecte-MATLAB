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
sigma = 0.02;
tr = 0.02;
s=tf('s');
%HP
numP = Uin/(L*C);
denP = [1, 1/(R*C), 1/(L*C)];
Hp = tf(numP, denP); 
%Țita
tita = -log(sigma)/sqrt(pi^2 + (log(sigma))^2);
wn = 4/(tita * tr);
Ho = wn^2 / (s^2 + 2*tita*wn*s + wn^2);
%Hc(s) Controller-ul
Hc = minreal( inv(Hp) * (Ho/(1 - Ho)) );
%Verificam bucla inchisa
Loop = minreal(Hc * Hp);
bucla_inchisa = feedback(Loop, 1);

figure; step(bucla_inchisa); grid on;
title('Bucla inchisa')
stepinfo(bucla_inchisa)

%%Verificare Controller 
PWM_freq = 1500;
PWM_period = 1/PWM_freq;
Ts1 = PWM_period/10;   
Ts2 = PWM_period;      
Hc_d1 = c2d(Hc, Ts1, 'zoh');   
Hc_d2 = c2d(Hc, Ts2, 'zoh');   

%%Testare Discreta
Hp_d1 = c2d(Hp, Ts1, 'zoh');
Hp_d2 = c2d(Hp, Ts2, 'zoh');
Closed_d1 = feedback(Hc_d1 * Hp_d1, 1);
Closed_d2 = feedback(Hc_d2 * Hp_d2, 1);
figure; step(Closed_d1); title('Bucla inchisa Ts = PWM/10');
figure; step(Closed_d2); title('Bucla inchisa Ts = PWM');

        