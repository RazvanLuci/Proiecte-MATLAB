function [m,k]=FixedPointMethod(x0,e)
%Patrulescu UTCN 2024
% the function implements the Fixed Point Method
% it returns the approximate value of solution, m, and the number of steps, k
x1=g(x0); 
k=1;
d=abs(x1-x0);
if f(x1)==0
    m=x1;
    return
elseif d<e
    m=x1; 
   return
else
  while (d>e)&&(k<=100)
    x1=g(x0);
    d=abs(x1-x0);
    k=k+1;
    x0=x1;
   end
   m=x1;
   if k>100
    fprintf('The method fails to converge in 100 steps\n')
   end
end

