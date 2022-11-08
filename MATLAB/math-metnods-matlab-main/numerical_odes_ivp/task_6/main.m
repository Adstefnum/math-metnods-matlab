clc

clear

close all
bp = 2.5*10e-4;
dp = 0.7;
bg = 1.1;
dg=5*10e-4;

func = @(t,y) [bp*y(2)*y(1)-dp*y(2),bg*y(1)-dg*y(1)*y(2)];
 [t,y] = runge_kutta_4th_sys(func,[0,25],[3000,500],0.5,2)

 figure
 plot(t(:),y(:,1))
 xlabel("time")
 hold on
 plot(t(:),y(:,2))
 hold off
 legend("Prey","Predator")	

 figure
 plot(y(:,1),y(:,2))
 title("Prey V Predator")
 xlabel("prey")
 ylabel("predator")
