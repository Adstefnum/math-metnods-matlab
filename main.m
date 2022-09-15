
clc

clear

close all

data = load("task_1_data.txt");

x = data(:,1);
y = data(:,2);
n= numel(x);
h = 0.5;
acc = der2h2(y,n,h);
acc

plot(x,acc,'bo-')
xlabel('x')
ylabel('second derivative')
title('Plot of the Second derivative')