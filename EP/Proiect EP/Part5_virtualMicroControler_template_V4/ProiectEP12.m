clc
clear
close all

num = [6.58e4 2.369e8 1.485e11 3.783e13 3.944e15];
den = [4.372e7 3.498e10 9.873e12 1.151e15 0];   % observă termenul constant 0

Hc_s = tf(num, den);

Tpwm = 0.01;   % 10 ms
Hc_z = c2d(Hc_s, Tpwm);     % implicit ZOH (default)
[numz, denz] = tfdata(Hc_z,'v')
