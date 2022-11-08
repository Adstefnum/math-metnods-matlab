clc

clear

close all

 hc = 40;
P = 0.016;
k = 240;
Ac = 1.6 * 10e-5;
Ts = 293;

func =  @(x,Y)[Y(2);((Y(1)-Ts).*(hc*P)/(k*Ac))];

 [rx,ry] = runge_kutta_4th(func,[0,0.1])