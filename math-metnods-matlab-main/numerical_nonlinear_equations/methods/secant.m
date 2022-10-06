function res = secant(func,left_endpoint,right_endpoint,precision,varargin)
error = precision + 1;
while error > precision
    x2=(left_endpoint*func(right_endpoint)-right_endpoint*func(left_endpoint))/(func(right_endpoint)-func(left_endpoint));
    left_endpoint=right_endpoint;        
    right_endpoint=x2;
    error=abs(right_endpoint-left_endpoint);
    res=x2; 

end
end