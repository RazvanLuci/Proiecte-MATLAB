%Patrulescu UTCN 2024
clear
clc
close all
global typex
global typeg
typex='ex2';
typeg='g3';
q=ftitle; % a string variable which describe using Latex symbols the function f (see title)
[a,b,x0]=LimitsInt; % the ends of the interval and the initial values for Newton and Secant method
x=a-0.5:0.05:b+0.5; % the vector x is used to plot the graphic of function f
nx=length(x); % determines the length of the vector x
y=f(x); %determines the values of vector f(x)
z=zeros(1,nx);% the vector z is used to plot the abscissa Ox  
figure(1)
hold on
box onxx
axis([a-0.6 b+0.6 min(y)-0.15 max(y)+0.15]) % set the axis
title(['The Graphic of ',q],'Interpreter','Latex')% title with f(x)
xlabel ('$x$','Interpreter','Latex')
ylabel ('$f(x)$','Interpreter','Latex')
plot(x,y,'Color','m','LineWidth',1.5)
plot(x,z,'Color','k','LineWidth',2)
fprintf('FIXED POINT METHOD FOR NONLINEAR EQUATIONS\n\n')
fprintf('To introduce a new example modify: LimitsInt, ftitle, f\n\n ')
e=10^(-10); % constant used in stop condition
%FIXED POINT METHOD METHOD
fprintf('FIXED POINT METHOD\n')
tic
[mfp,kfp]=FixedPointMethod(x0,e);
timefp=toc;
fprintf('The approx. sol. is %.5f obtained in %d steps\n',mfp,kfp)
fprintf('The exectution time for Fixed Point Method is %.7f\n',timefp)
fprintf('-------------------------------------------\n\n')