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
x0 = 0.5;

precision = 1*10e-5;
max_iter =25;
func = @(x) (L*tan(x)) - (((L^2)*g)/2*v^2*(cos(x))^2) + hq;
func_derivative = @(x) L*((sec(x))^2) - (L^2*g/2*v^2)*2*((sec(x))^2)*tan(x);


estimate_initial(func,1,10,0.5)

fsolve(func,5.5)
result = newton(func,func_derivative,x0,precision,max_iter,L=L,hq=hq,g=g,v=v)
result_1  = bisection(func,1,10,1e-5)
result_2 = secant(func,1,10,1e-5)

