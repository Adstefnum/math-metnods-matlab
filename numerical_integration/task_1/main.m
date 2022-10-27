clc

clear

close all

func = @(y) (4/25*pi)*y*sqrt(9-y^2);
f0 = create_points(func,-5,5);

plot(f0(:,1),f0(:,2))
trapezoidal(func,-5,5,10)
simpson(func,-5,5,10)

