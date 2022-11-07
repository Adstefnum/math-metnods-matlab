clc

clear

close all
bp = 2.5*10e-4;
dp = 0.7;
bg = 1.1;
dg=5*10e-4;

func = @(t,y) [bp*xp*xg-dp*xp;bg*xg-dg*xg*xp];
 [x,y] = euler_sys(func,[0,25],[3000,500],0.5)

 t = 0:0.5:25;

 figure
 plot(t,x)
 xlabel("time")
 hold on
 plot(t,y)
 hold off
 legend("Prey","Predator")	

 plot(xg,xp)
 title("Prey V Predator")
 xlabel("prey")
 ylabel("predator")
