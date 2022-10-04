function current_point= newton(func,func_derivative,current_point,precision,max_iter,varargin)
no_of_iterations = 0;
error = precision -1;


while error <= precision && no_of_iterations <= max_iter
    
    next_point = current_point-(func(current_point)/func_derivative(current_point));
    disp(next_point)                          
    error=abs(next_point-current_point);                             
    current_point=next_point;
    no_of_iterations=no_of_iterations+1;
end
end

