clc

clear

close all
hc = 40;
P = 0.016;
k = 240;
Ac = 1.6 * 10e-5;
ep = 0.4;
sb = 5.67 * 10e-8;
Ts = 293;
T0 = 473;

row_funcs = @(r,h) [ k*Ac, -((2*k*Ac)+(h^2*hc*P)+(h^2*ep*sb*P)/(k*Ac)),k*Ac];
b_func = @(h) (-h^2*((hc*P*Ts)+(ep*sb*P*Ts)))/(k*Ac);
res = calc_bvp([0,0.1],100,[473,293],row_funcs,b_func)
plot(res(:,1),res(:,2))


