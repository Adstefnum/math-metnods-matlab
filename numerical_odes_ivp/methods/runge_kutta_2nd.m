function res = runge_kutta_2nd(func,x0,y0,n,h,b)

 res = zeros(uint8(b/h),2);
res(1,:)=[x0 y0];

for i = 1:n
     if i*h < b
    k1= h*func(res(i,1),res(i,2));
    k2= h*func(res(i,1),res(i,2)+k1);

    res(i+1,2) =res(i,2)+(k1+k2)/2;
    res(i+1,1) = i*h; 

     end
end

