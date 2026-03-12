function [a,b,x0]=LimitsInt
%Patrulescu 2024
%returns the limits of the inverval which contains the solution (Inermedite Value Theorem)
%also returns the initial values for Fixed Point Method
global typex
switch typex
    case 'ex1'
        a=1;b=2;
        x0=2;
     case 'ex2'
        a=3/4;b=2;
        x0=1.5;
     case 'ex3'
        a=0.5;b=2;
        x0=1.5;
        
end