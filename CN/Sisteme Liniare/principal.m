clc
clear all
global typex
typex = 'ex1';
[A,b]=DataSyst;
if istril (A)
    [x]=FowardSub(A,b);
elseif istril(A)
    x=BackwardSubst(A,b);
else
    disp('Pauza')
    x=[];
end
disp(x)