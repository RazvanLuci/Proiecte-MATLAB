function [y]=f(x)
global typex 
switch typex
    case 'ex1'
        y=cos(x);
    case 'ex2'
        y=x.^2+2*x;
end