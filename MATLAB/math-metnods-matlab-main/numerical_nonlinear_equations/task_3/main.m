clc

clear

close all
    

q = 1.602 * 10e-19;
k = 1.38 * 10e-23;
Voc = 0.5;
T =297;

func = @(Vmp) exp(((q*Vmp)/(k*T))) * (1 + ((q*Vmp)/(k*T))) - exp(((q*Voc)/(k*T)));
estimate_initial(func,0,20,0.5)
result = bisection(func,0,1,1e-3)
func(result)