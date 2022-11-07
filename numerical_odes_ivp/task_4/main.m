clc

clear

close all

syms y(x)
[V] = odeToVectorField(diff(y,2)+2*diff(y)+2*y==0);

func = matlabFunction(V,'vars',{'x','Y'})

%[0,1], 0 for y, 1 for y' i.e y''=y'and y
 [x,y] = my_euler(func,0,[0,1],5,0.3,1.5)
 [rx,ry] = runge_kutta_4th(func,0,[0,1],5,0.3,1.5)

 ode = @(x,y) [(1/10)*(exp(3*x)-cos(x)+7*sin(x))];

disp("              t               euler_x            euler_y              analytical_x             analytical_y              error")
calc_error(ode,[x(:),y])


disp("              t               runge-kutta-4th_x            runge-kutta-4th_y              analytical_x             analytical_y              error")
calc_error(ode,[rx(:),ry])