function res = newton(func,func_derivative,initial_point,precision,max_iter,varargin)
res = initial_point;
no_of_iterations = 0;
error = 1*10e-20;


while error <= precision && no_of_iterations <= max_iter
    
    y = initial_point-(func/func_derivative);
    res =[res;y];                           
    error=abs(y-initial_point);                             
    initial_point=y;
    no_of_iterations=no_of_iterations+1;
end
end

