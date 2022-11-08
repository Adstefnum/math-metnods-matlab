clc

clear

close all

func = @(z) 160*z*exp(-z/8)/(z+4);

f0 = create_points(func,0,24);

plot(f0(:,1),f0(:,2))
trapezoidal(func,0,24,24)
simpson(func,0,24,24)
rect(func,0,24,24)