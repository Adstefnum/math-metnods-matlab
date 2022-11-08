clc

clear

close all

c =0.16;
m = 0.5;
g =9.81;
L= 1.2;


func = @(x,Y)[Y(2),sin(Y(1)).*(g/L)-Y(2).*(c/m)];

 [x,y] = euler_sys(func,[0,18],[pi/2,0],2)
 [rx,ry] = runge_kutta_4th_sys(func,[0,18],[pi/2,0],2,2)
