function res = calc_bvp(x_range,n,y_ini,row_funcs,b_func)
h = (x_range(2)-x_range(1))/n;
A = zeros(n+1,n+1);
A(1,1)=1;
A(n+1,n+1) = 1;
r = x_range(1);
j = 1;
for i=2:n+1
    r = r+h;
   row_vals = row_funcs(r,h);
    if j+2 <= n+1
        
         A(i,j) = row_vals(1);
            
        A(i,j+1) = row_vals(2);
        
        A(i,j+2)= row_vals(3);        
    end
    j = j+1;
end
b=b_func(h)*ones(n+1,1);

b(1) = y_ini(1);
b(n+1) = y_ini(2);
x=linspace(x_range(1),x_range(2),n+1);
y=A\b;
res = [x(:) y];

end
