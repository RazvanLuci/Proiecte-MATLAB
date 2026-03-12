function GershgorinCircles(A)
%Patrulescu 2024 UTCN
n=length(A(1,:));


figure(1)
hold on
box on
for i=1:n
    xc=real(A(i,i));
    yc=imag(A(i,i));
    r=sum(abs(A(i,:)))-abs(A(i,i));
   [x,y]=Circle(xc,yc,r);
   plot(x,y,'Color','k','LineWidth',1.5)
end
title('Row Gershgorin Circles')
xlabel('Re(z)')
ylabel('Im(z)')

figure(2)
hold on
box on
for i=1:n
    xc=real(A(i,i));
    yc=imag(A(i,i));
    r=sum(abs(A(:,i)))-abs(A(i,i));
   [x,y]=Circle(xc,yc,r);
   plot(x,y,'Color','k','LineWidth',1.5)
end
title('Column Gershgorin Circles')
xlabel('Re(z)')
ylabel('Im(z)')