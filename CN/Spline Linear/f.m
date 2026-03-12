function [y]= f(x)
    global typex 
    switch typex
        case 'ex1'
            if(x<1)
                y=5*abs(2*x-1)+6*abs(4*x-3);
            else
                y=x^2+10;
            end;
    end;