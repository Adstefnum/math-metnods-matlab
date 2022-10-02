clc

clear

close all

data = importdata("task_6_data.txt").data;
x = data(:,1);
y = data(:,2);
n= numel(x);
h = x(2)-x(1);
E = 29 *10e6;
I = 29954;
M = bending_moment(y,n,h,E,I);
M