function [A,x0,valpmax]=MatrixEigenvalue
%Patrulescu 2024 UTCN
global typex
switch typex
    case 'ex1'
        A=[-4,14,0;-5,13,0;-1,0,2];
        valpmax=6;
        x0=[1,1,1];
    case 'ex2'%Quarteroni et al 2000, pag 199
        A=[15,-2,2;1,10,-3;-2,1,0];
        valpmax=14.103;
        x0=[1,1,1];
    case 'ex3'
       A=[1,3,4;3,1,2;4,2,1];
       valpmax=7.047;
       x0=[1,1,1];
end