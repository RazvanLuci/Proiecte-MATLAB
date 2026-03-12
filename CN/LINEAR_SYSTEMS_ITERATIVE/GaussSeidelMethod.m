function [sol,steps]=GaussSeidelMethod(A,b,xo,e)
%Patrulescu UTCN 2024
if iscolumn(b)
    b=b';
end
n=length(b);
d=1;
k=0;
while (d>e)&&(k<=500)
  xn=zeros(1,n);
  for i=1:n
      S1=0;S2=0;
      for j=1:i-1
          S1=S1+A(i,j)*xn(j);
      end
      for j=i+1:n
          S2=S2+A(i,j)*xo(j);
      end
      xn(i)=(b(i)-S1-S2)/A(i,i);
  end
 d=norm(xn-xo,Inf);
 k=k+1;
 xo=xn;
end
sol=xn;
steps=k;
if k>500
    fprintf('The method fails to converge in 500 steps\n')
end