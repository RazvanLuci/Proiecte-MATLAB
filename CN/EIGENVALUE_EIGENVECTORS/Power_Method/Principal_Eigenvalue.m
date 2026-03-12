%Patrulescu 2024 UTCN
clc
clear
close all
global typex
typex='ex3';
[A,x0,valpmax]=MatrixEigenvalue;
e=10^(-10);
GershgorinCircles(A)
fprintf('POWER METHOD\n\n')
tic
[lambda,x,k]=PowerMethod(A,x0,e);
timepm=toc;
fprintf('Te exact value of dominant eigenvalue is %.5f\n',valpmax)
fprintf('The approx. value. is %.5f obtained in %d steps\n',lambda,k)
fprintf('The exectution time for Power Method is %.7f\n',timepm)
fprintf('-------------------------------------------\n\n')