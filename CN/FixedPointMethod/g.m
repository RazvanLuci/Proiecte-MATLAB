function [y]=g(x)
%Patrulescu 2024 UTCN
%the function returns the value of g(x)
global typex
global typeg
switch typex
    case 'ex1'
        switch typeg
            case 'g1'
                y=x-x.^3-4*x.^2+10;
            case 'g2'
                y=(10./x-4*x).^(1/2);
            case 'g3'
                y=1/2*(10-x.^3).^(1/2);
            case 'g4'
                y=(10./(4+x)).^(1/2);
            case 'g5'
                y=x-(x.^3+4*x.^2-10)./(3.*x.^2+8*x);
        end
  case 'ex2'
        switch typeg
            case 'g1'
                y=(x.^3+1)/2;
            case 'g2'
                y=2./x-1./(x.^2);
            case 'g3'
                y=(2-1./x).^(1/2);
            case 'g4'
                y=-(1-2*x).^(1/3);
        end
    case 'ex3'
        switch typeg
            case 'g1'
                y=(3+x-2*x.^2)^(1/4);
            case 'g2'
                y=((x+3-x.^4)/2)^(1/2);
            case 'g3'
                y=((x+3)./(x.^2+2)).^(1/2);
            case 'g4'
                y=(3*x.^4+2*x.^2+3)./(4*x.^3+4*x-1);
        end
    
end