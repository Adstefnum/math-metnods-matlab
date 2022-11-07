clc

clear

close all

c =0.16;
m = 0.5;
g =9.81;
L= 1.2;

syms y(x)
[V] = odeToVectorField(diff(y,2)+(c/m)*diff(y)+(g/L)*sin(y)==0);

func = matlabFunction(V,'vars',{'x','Y'});

%[0,1], 0 for y, 1 for y' i.e y''=y'and y
 [x,y] = my_euler(func,0,[pi/2,0],9,2,18)
 [rx,ry] = runge_kutta_4th(func,0,[pi/2,0],9,2,18)
