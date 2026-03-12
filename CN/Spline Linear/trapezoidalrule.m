function [T]=TrapezoidalRule(a,b,n)
h=(b-a)/n;
T=1/2*(f(a)+f(b));
for i= 1:n-1
    T=T+f(a)+i*h;
end;
T=T*h;
end
