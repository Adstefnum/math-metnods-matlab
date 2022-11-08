clc

clear

close all

func =  @(x,Y)[Y(2),Y(1).*-2.0-Y(2).*2.0];

[x,y] = euler_sys(func,[0,1.5],[1,0],0.3)
 [rx,ry] = runge_kutta_4th_sys(func,[0,1.5],[1,0],0.3,2)

 ode = @(x,y) [(1/10)*(exp(3*x)-cos(x)+7*sin(x))];

disp("  x|      euler_y|    analytical_y|     error")
calc_error(ode,[x(:),y])


disp("  x|      runge-kutta-4th_y|    analytical_y|     error")
calc_error(ode,[rx(:),ry])