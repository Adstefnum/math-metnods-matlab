clc

clear

close all

func = @(y) (4*pi*y/25)*sqrt(9-y^2);
f0 = createpoints(func,-5,5)
trapz(f0)