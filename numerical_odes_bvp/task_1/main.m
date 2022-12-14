clc

clear

close all

format short g



row_funcs = @(r,h) [ r, -(2*r+h),r+h];
b_func = @(h) -500*h^2;
res = calc_bvp([1,3.5],100,[600,25],row_funcs,b_func)
plot(res(:,1),res(:,2))



