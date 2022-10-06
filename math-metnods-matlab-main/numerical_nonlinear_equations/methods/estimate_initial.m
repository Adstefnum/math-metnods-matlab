function estimate_initial(func,start,end_point,step)
index =1;
length = ((end_point - start)/step) +1;
xs = zeros(length);
ys = zeros(length);
for i=start:step:end_point
xs(index) = i;
ys(index) = func(i);
index  = index+1;
end

plot(xs,ys);
end

