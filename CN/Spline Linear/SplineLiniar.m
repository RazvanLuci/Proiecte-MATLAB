function [SL] = SplineLiniar(D,fD,x)
nD= length(D)-1;
    SL=zeros(1,nD+1);
    if x<= D(2)
        S(1) = (x-D(1))/(D(2)-D(1));
    end
        if x>=D(nD)
            s(nD+1)= (D(nD+1)-x)/(D(nD+1)-D(nD));
        end
        for k=2:nD
            if (D(k-1)<=x) && (x<D(k))
                s(k)=(x-D(k-1))/(D(k)-D(k-1));
            elseif  (D(k)<=x)&&(x<D(k+1))
                s(k)= ((x-D(k-1))/D(k)-D(k-1));
            end
        end
        SL=sum(fD.*S);
