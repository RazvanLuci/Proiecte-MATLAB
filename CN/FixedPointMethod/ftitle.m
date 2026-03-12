function [q]=ftitle
%Patrulescu UTCN 2024
%the function returns the string which describe the function f(x) using
%Latex symbols
global typex
switch typex
    case 'ex1'
        q='$f(x)=x^3+4 x^2-10$';
   case 'ex2'
        q='$f(x)=x^3-2x+1$';
    case  'ex3'
        q='$f(x)=x^4+2x^2-x-3$';
end
        