function res = runge_kutta_4th(func,x0,y0,n,h,b)
res = zeros(uint8(b/h),2);
res(1,:)=[x0 y0];


 for i = 1:n
     if i*h < b
   k1 = h*func(res(i,1),res(i,2));
   k2 = h*func(res(i,1)+h/2, res(i,2)+k1/2);
   k3 = h*func(res(i,1)+h/2, res(i,2)+k2/2);
   k4 = h*func(res(i,1)+h,res(i,2)+k3);

   res(i+1,2) = res(i,2)+(k1+2*(k2+k3)+k4)/6;
   res(i+1,1) = i*h;
     end

 end
end

