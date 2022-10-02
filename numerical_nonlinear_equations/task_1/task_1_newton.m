function res = task_1_newton(x,precision,max_iter,L,hq,g,v)
res = x;
no_of_iterations = 0;
error = 1*10e-20;


while error <= precision && no_of_iterations <= max_iter
    func = (L*tan(x)) - (((L^2)*g)/2*v^2*(cos(x))^2) + hq;
    func_derivative = L*((sec(x))^2) - (L^2*g/2*v^2)*2*((sec(x))^2)*tan(x);
    y = x-(func/func_derivative);
    res =[res;y];                           
    error=abs(y-x);                             
    x=y;
    no_of_iterations=no_of_iterations+1;
end
end

