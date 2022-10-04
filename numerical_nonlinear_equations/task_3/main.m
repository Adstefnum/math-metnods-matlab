clc

clear

close all

type newton.m;
type estimate_initial.m;
type secant.m;
type bisection.m;

q = 1.602 * 10e-19;
k = 1.38 * 10e-23;
Voc = 0.5;
T =297;

func = @(Vmp) exp(q*Vmp/k*T) * (1 + q*Vmp/k*T) - exp(q*Voc/k*T);
estimate_initial(func,1,10,0.5)
%fsolve(func,-10)