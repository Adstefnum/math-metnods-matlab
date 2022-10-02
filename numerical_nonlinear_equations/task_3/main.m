clc

clear

close all
q = 1.602 * 10e-19;
k = 1.38 * 10e-23;
Voc = 0.5;
T =297;

func = @(Vmp) e^(q*Vmp/k*T) * (1 + q*Vmp/k*T) - e^(q*Voc/k*T);