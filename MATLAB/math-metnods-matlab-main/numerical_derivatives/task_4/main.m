clc

clear

close all

data = load("task_4_data.txt");

x = data(:,1);
T = data(:,2);
n= numel(x);
h = x(2)-x(1);
k = 240;
A = 1.6 * 10e-5;

hf_0 = -k*heatflux_forward(0,T,n,h);
hf_L = -k*heatflux_backward(n,T,h);
disp("heat flux at x=0 is")
hf_0
disp("heat flux at x=L is")
hf_L

disp("heat lost from x=0 to x=L is")
heat_lost(A,hf_0,hf_L)


