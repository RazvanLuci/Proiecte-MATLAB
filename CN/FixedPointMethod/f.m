function [y]=f(x)
%Patrulescu UTCN 2024
%the function returns the value of f(x)
global typex
switch typex
    case 'ex1'
        y=x.^3+4*x.^2-10; %Burden et al., 2022, pag 64
    case 'ex2'
        y=x.^3-2*x+1; %Burden et al., 2022, pag64
    case 'ex3'
        y=x.^4+2*x.^2-x-3; %Burden et al., 2022, pag64
end