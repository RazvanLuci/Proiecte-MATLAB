function [x]= FowardSub(L,b)
if iscolumn(b)
    b=b';
end;

n=length (b);
x=zeros(1,n);
x(1)=b(1)/L(1,1);
for i=2:n
    S=0;
    for j=1:i-1
        S=S+L(i,j)*x(j);
    end;
    x(i)=(b(i)-S)/L(i,i);
end;
x(i)=(b(i)-S)/L(i,i);
end