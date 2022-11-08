function res = modified_euler(func,x0,y0,n,h,b)
 
 res = zeros(uint8(b/h),2);
res(1,:)=[x0 y0];


 for i = 1:n+1
     if res(i,1) + h < b
    res(i+1,1)= res(i,1)+h;
    pred=res(i,2)+h*func(res(i,1),res(i,2));
    res(i+1,2)=res(i,2)+(h/2)*( func(res(i,1),res(i,2))+ func(res(i+1,1),pred));
     end
 end
end


   

    

