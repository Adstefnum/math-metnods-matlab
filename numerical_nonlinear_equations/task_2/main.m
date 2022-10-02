clc

clear

close all
R = 0.08206;
P = 13.5;
n =1.5;
T = 25+273;
a = 1.39 ;
b = 0.03913;

func = @(V) P - (nRT/V-nb) + (n^2*a/V^2);   

