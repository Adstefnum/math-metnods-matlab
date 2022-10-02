clc

clear

close all

data = load("task_3_data.txt");

t = data(:,1);
q = data(:,2);
n= numel(t);
h = t(2)-t(1);
cur = current(q,n,h);

plot(t,cur,'bo-')
xlabel('time(s)')
ylabel('current (A)')
title('Current vs Time graph')
