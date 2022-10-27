clc

clear

close all

x0 = 3;

% func = @root2d;
% func_derivative = @root2d_der;

func = @(x) 0.5*(exp(x/2)+exp(-x/2))-(sqrt((225-(9*x^2))/25));
func_derivative = @(x) exp(-x/2)*(exp(x)-1)/4 - (9*x/5*sqrt(225-(9*x^2)));

estimate_initial(func,0,100,5)
result_new = newton(func,func_derivative,x0,1e-3,100)
func(result_new)