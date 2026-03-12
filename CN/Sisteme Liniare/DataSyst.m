function [A,b]=DataSyst
global typex
switch typex
    case 'ex1'
        A=[2,0,0,0;2,3,0,0;3,1,2,0;2,-2,1,1];
        b=[2,5,6,2];
    case 'ex2'
        A=[4,3,2,1;0,2,2,3;0,0,2,1;0,0,0,3];
        b=[10,7,3,3];
end