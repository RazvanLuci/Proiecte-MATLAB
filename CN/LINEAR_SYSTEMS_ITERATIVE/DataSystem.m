function [A,b,exact,xo]=DataSystem
%Patrulescu UTCN 2024
%A-matrix of the system
%b-vector of the system
%exact-exact solution
%xo-initial value for the methods
global typex
switch typex
    case 'ex1'%Qarteroni et al.,2000; 7/180
      A=[62,24,1,8,15;23,50,7,14,16;4,6,58,20,22;10,12,19,66,3;11,18,25,2,54];
      b=[110,110,110,110,110];
      exact=[1,1,1,1,1];
      xo=[0,0,0,0,0];
    case 'ex2'
      A=[5,7,6,5; 7,10,8,7;6,8,10,9;5,7,9,10];
      b=[23,32,33,31];
      exact=[1,1,1,1];
      xo=[0,0,0,0];
end
