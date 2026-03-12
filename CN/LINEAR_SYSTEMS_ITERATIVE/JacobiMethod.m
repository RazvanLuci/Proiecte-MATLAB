function [sol,steps]=JacobiMethod(A,b,xo,e)
%Patrulecu 2024 UTCN
%compute the approximative solution of a linear system using iterative
%Jacobi method
if iscolumn(b)
    b=b';%transform the column vector b in a row vector
end
n=length(b); 
d=1;% represents the initial distance between two consecutive iterates 
k=0;
while (d>e)&& (k<=500)
    xn=zeros(1,n);
    for i=1:n
         S=0;
         for j=1:n
             if j~=i 
                 S=S+A(i,j)*xo(j);
             end
         end
     xn(i)=(b(i)-S)/A(i,i);    
    end
    d=norm(xn-xo,Inf);
    k=k+1;
    xo=xn;
end
sol=xn;
steps=k;
if steps>500
    fprintf('The method fails to converge in 500 steps\n')
end

