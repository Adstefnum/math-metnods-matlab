clc

clear

close all
type root2d.m
type newton.m;
type estimate_initial.m;


func = @root2d;
x0 = [0,0];
newton(func,func_derivative,x0,1e-5,25)