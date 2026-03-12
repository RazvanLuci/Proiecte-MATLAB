function [B]=Bernstein_Pol_F(n,t)
%Patrulescu 20024 UTCN
%computes the values of fundamental Bernstein polynomials of degree n in
%for the point t
%see Piegl and Tiller 1996
B=zeros(1,n+1);
t1=1-t;
B(1)=1;
for j=2:n+1
    saved=0;
    for k=1:j-1
        temp=B(k);
        B(k)=saved+t1*temp;
        saved=t*temp;
    end
    B(j)=saved;
end
