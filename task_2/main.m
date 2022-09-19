
clc

clear

close all

data = load("task_2_data.txt");

x = data(:,1);
y = data(:,2);
n= numel(x);
h = 0.5;
vel = velocity(y,n,5)
acc = acceleration(y,n,5)

subplot(1,2,1)
plot(x,vel,'bo-')
xlabel('time(s)')
ylabel('velocity(m/s)')
title('Velocity-Time graph')

subplot(1,2,2)
plot(x,acc,'bo-')
xlabel('time(s)')
ylabel('acceleration(m/s^2)')
title('Acceleration-Time graph')

