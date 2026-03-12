function [x] BackwardSubst(U,b)
if iscolumn (b)
    b=b';
end;
n=length (b);
x=zeros(1,n);
x(n)=b(n)/U(n,n);
for i=n-1:-1:1
    S=0;
    for j=i+1:n
        S=S+U(i,j)*x(j);
    end
    x(i)=(b(i)-S/U(i,i));
end
