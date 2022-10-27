function res = create_points(func,a,b)
res = zeros(b-a,2);
k = 1;
    for i=a:b
    res(k,1) = i;
    res(k,2) = func(i);
    k = k  + 1;
    end
   
end