clc

clear

close all

v= 15;
L =20;
hq = 2.1;
hr = 1.9;
y = hr;
g =9.8;
x0 = 1.5;

precision = 1*10e-5;
max_iter =25;
func = (L*tan(x)) - (((L^2)*g)/2*v^2*(cos(x))^2) + hq;
func_derivative = L*((sec(x))^2) - (L^2*g/2*v^2)*2*((sec(x))^2)*tan(x);
result = task_1_newton(func,func_derivative,x0,precision,max_iter,L=L,hq=hq,g=g,v=v);
disp(result);