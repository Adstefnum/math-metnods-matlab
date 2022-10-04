clc

clear

close all
type root2d.m
type newton.m;
type estimate_initial.m;
type secant.m;
type bisection.m;

func = @root2d;
x0 = [0,0];
options = optimoptions(@fsolve,'Display','none','PlotFcn',@optimplotfirstorderopt);
x = fsolve(func,x0,options);
x