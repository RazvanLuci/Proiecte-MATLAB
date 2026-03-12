clc 
clear
close all
global typex 


typex = 'ex1';
a=0; b=2;
D=[0, 1/2, 2/3, 1, 2];

nD=length(D);
fD=zeros(1,nD);
for j= 1:length(D)
    fD(j)=f(D(j));

end;


for j=1:nD
    fD(j)=f(D(j));
end;

x=a:0.05:b;
nx=length(x);
y=zeros(1,nx);
for k=1:nx
    y(k)=f(x(k));
    S(k)=SplineLiniar(D,fD,x(k));

end;
figure (1)
hold on
box on
plot(x,y,'Color','k','LineWidth',2)
plot(x,s,'Color','b','LineWidth',15)

s=zeros(1,nx);
S(k)=SplineLiniar(D,fD,x(k));
plot(x,s,'Color','b','LineWidth',1.5)

