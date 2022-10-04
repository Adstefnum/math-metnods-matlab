clc

clear

close all

type newton.m;
type estimate_initial.m;
type secant.m;
type bisection.m;
R = 0.08206;
P = 13.5;
n =1.5;
T = 25+273;
a = 1.39 ;
b = 0.03913;


func = @(V) P - (n*R*T/V-n*b) + (n^2*a/V^2);   
estimate_initial(func,1,10,0.5)


