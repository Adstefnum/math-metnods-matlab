clc

clear

close all

type "methods/my_euler.m"
func = @(x,y) (x^2)/y;

me = my_euler(func,0,2,3,0.7,2.1)
moe = modified_euler(func,0,2,2.1,0.7,2.1)
r4 = runge_kutta_4th(func,0,2,3,0.7,2.1)

syms y(x)
ode = diff(y,x) == x^2/y;
cond = y(0) == 2;
ySol(x) = dsolve(ode,cond);

disp("      x     euler       analytical      error")
calc_error(ySol,me,2.1)

disp("      x     modified-euler       analytical      error")
calc_error(ySol,moe,2.1)

disp("      x     runge-kutta-4th       analytical      error")
calc_error(ySol,r4,2.1)

