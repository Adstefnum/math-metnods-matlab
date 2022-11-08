clc

clear

close all
hc = 40;
P = 0.016;
k = 240;
Ac = 1.6 * 10e-5;
ep = 0.4;
Sb = 5.67 * 10e-8;
Ts = 293;

func =  @(x,Y)[Y(2);((ep*Sb*P)*(Y(1).^4-Ts^4)/(k*Ac)+(Y(1)-Ts).*(hc*P)/(k*Ac))];



 [rx,ry] = runge_kutta_4th(func,[0,0.1])

