function res = secant(func,x0,x1,precision,varargin)
error = precision + 1;
while error > precision
    x2=x1-(func(x1)*((x1-x0)/((func(x1)-func(x0)))));
    x0=x1;        
    x1=x2;
    error=abs(func(x1)-func(x0));
    res=x2;
end
end