clc

clear

close all
format short g

 hc = 40;
P = 0.016;
k = 240;
Ac = 1.6 * 10e-5;
Ts = 293;




row_funcs = @(r,h) [ 1, -(2+(h^2*hc*P)/(k*Ac)),1];
b_func = @(h) (-h^2*hc*P)/(k*Ac);
res = calc_bvp([0,0.1],100,[473,293],row_funcs,b_func)
plot(res(:,1),res(:,2))



