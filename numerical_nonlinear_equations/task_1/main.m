clc

clear

close all

type newton.m;
type estimate_initial.m;
type secant.m;
type bisection.m;
    
v= 15;
L =20;
hq = 2.1;
hr = 1.9;
y = hr;
g =9.8;
x0 = 30;
x1 = 60;

precision = 1*10e-5;
max_iter =25;
func = @(x) (L*tan(x*pi/180)) - (((L^2)*g)/2*v^2*(cos(x*pi/180))^2) + hq;
func_derivative = @(x) L*((sec(x*pi/180))^2) - (L^2*g/2*v^2)*2*((sec(x*pi/180))^2)*tan(x*pi/180);


estimate_initial(func,-500,500,0.5)

fsolve(func,x0)
result_new = newton(func,func_derivative,x0,precision,max_iter,L=L,hq=hq,g=g,v=v)
result_bis  = bisection(func,x0,x1,precision)
result_sec = secant(func,x0,x1,precision)
func(result_new)

