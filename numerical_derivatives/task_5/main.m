clc

clear

close all

data = importdata("task_5_data.txt").data;
t = data(:,1);
r = data(:,2);
phi = data(:,3);
n= numel(t);
h = t(2)-t(1);

vel = velocity(r,phi,n,h);
acc = acceleration(r,phi,n,h);

subplot(1,2,1)
plot(t,vel,'bo-')
xlabel('time(s)')
ylabel('velocity(m/s)')
title('Plot of velocity vs Time')

subplot(1,2,2)
plot(t,acc,'bo-')
xlabel('time(s)')
ylabel('acceleration (m/s^2)')
title('Plot of Acceleration vs Time')

