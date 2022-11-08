clc

clear

close all


func = @(r,T)[T(2);-(T(1)+5.0e+2)./r];

 [rx,ry] = runge_kutta_4th_bvp(func,[1,3.5],[600 0 0 0 0 25],0.5)

 