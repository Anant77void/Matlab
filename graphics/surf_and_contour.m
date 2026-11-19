clc 
clear
x=linspace(-10,10,80);
y=linspace(-10,10,80);
[X,Y]=meshgrid(x,y);
z=(X-Y)./(1+X.^2+Y.^2);

subplot(2,1,1)
surf(X,Y,z)
hold on
p1x=1/sqrt(2);
p1y=-1/sqrt(2);
p1z=1/sqrt(2);

p2x=-1/sqrt(2);
p2y=1/sqrt(2);
p2z=-1/sqrt(2);

plot3([p1x,p2x],[p1y,p2y],[p1z,p2z],'r*','Markersize',20)
hold off
title('Surface')
subplot(2,1,2)
contour(X,Y,z,20)
title('level curves')
