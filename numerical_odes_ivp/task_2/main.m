clc

clear

close all

func = @(y,T) -0.7*(T-20);

r2 = runge_kutta_2nd(func,0,60,9,1,10)
moe = modified_euler(func,0,60,9,1,10)
disp("      T     runge-kutta-2nd       modified-euler      difference")
calc_error_methods(r2,moe)
