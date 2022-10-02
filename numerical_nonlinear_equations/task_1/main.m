clc

clear

close all

v= 15;
L =20;
hq = 2.1;
hr = 1.9;
y = hr;
g =9.8;
x0 = 1.5;

precision = 1*10e-5;
max_iter =25;

result = task_1_newton(x0,precision,max_iter,L,hq,g,v);
disp(result);