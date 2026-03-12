function [lambda,x,k]=PowerMethod(A,x0,e)
%Patrulescu 2024 UTCN
%the function implements the Power Method  to find dominant eigenvalue
if isrow(x0)
  x0=x0';
end
x0=x0/norm(x0);
k=0;
d=1;
while (d>e)&&(k<100)
    y=A*x0;
    xn=y/norm(y);
    d=norm(xn-x0);
    x0=xn;
    k=k+1;
end
x=xn;
 lambda=x'*A*x/(x'*x);