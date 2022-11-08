clc

clear

close all

func = @(t,y) [y(1)-y(2)*t,t+y(2)];

 [x,y] = euler_sys(func,[0,1.2],[1, 1],0.4)
    [rx,ry] = runge_kutta_4th_sys(func,[0,1.2],[1, 1],0.4,2)

ode = @(t,y) [ 4*exp(t)-t^2*exp(t)-t^2-3*t-3; 2*exp(t)-t-1];

disp("              t               euler_x            euler_y              analytical_x             analytical_y              error")
calc_error_sys(ode,[x(:),y])


disp("              t               runge-kutta-4th_x            runge-kutta-4th_y              analytical_x             analytical_y              error")
calc_error_sys(ode,[rx(:),ry])

