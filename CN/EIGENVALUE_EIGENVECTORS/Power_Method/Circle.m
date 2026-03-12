function [x,y]=Circle(xc,yc,r)
%Patrulescu 2024 UTCN
%returns the values on the circle with center (xc,yc) and radius r
theta=0:0.001:2*pi;
nt=length(theta);
x=zeros(1,nt);
y=zeros(1,nt);
for k=1:nt
  x(k)=xc+r*cos(theta(k));
  y(k)=yc+r*sin(theta(k));
end