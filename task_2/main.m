
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

plot(x,vel,'bo-')


