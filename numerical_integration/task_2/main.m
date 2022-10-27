clc

clear

close all

func = @(x) sqrt((((3*x^2-25)*sin(x)-6*x*cos(x))/10)^2-((8*x*sin(x)+(4*x^2-33)*cos(x))/10)^2);

f0 = create_points(func,-4,3);

plot(f0(:,1),f0(:,2))
trapezoidal(func,-4,3,7)
