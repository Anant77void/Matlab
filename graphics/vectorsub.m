clc
clear
close all

x=linspace(-4, 4, 10);
y=linspace(-4, 4, 10);
[x,y]=meshgrid(x,y);


subplot(2,2,1)
f=sin(sqrt(x.^2+y.^2));
[fx,fy]=gradient(f);
quiver(x,y,fx,fy);

subplot(2,2,2)
f=x.^2+y.^2+2*x.*y;
[fx,fy]=gradient(f);
quiver(x,y,fx,fy);

subplot(2,2,3)
f=x.^2+y.^2;
[fx,fy]=gradient(f);
quiver(x,y,fx,fy);

subplot(2,2,4)
f=x.*x+y.*x;
[fx,fy]=gradient(f);
quiver(x,y,fx,fy);