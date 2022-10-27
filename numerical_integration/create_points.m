function res = create_points(func,a,b)
res = zeros(b-a);
    for i=a:b
    res(i,1) = i;
    res(i,2) = func(i);
    end
   
end