
clc

clear

close all

data = load("task_2_data.txt");

x = data(:,1);
y = data(:,2);
n= numel(x);
h = x(2)-x(1);
vel = velocity(y,n,h)
acc = acceleration(y,n,h)

subplot(1,3,1)
plot(x,y,'bo-')
xlabel('time(s)')
ylabel('Position(m)')
title('Position vs Time graph')

subplot(1,3,2)
plot(x,vel,'bo-')
xlabel('time(s)')
ylabel('velocity(m/s)')
title('Velocity vs Time graph')

subplot(1,3,3)
plot(x,acc,'bo-')
xlabel('time(s)')
ylabel('acceleration(m/s^2)')
title('Acceleration vs Time graph')

