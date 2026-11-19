clc
clear 
close all

x=linspace(-1,1,6);
y=linspace(-1,1,6);
z=linspace(-1,1,6);
[X,Y,Z]=meshgrid(x,y,z);

u=X;
v=Y;
w=3*ones(size(X));
quiver3(X,Y,Z,u,v,w,0.2)