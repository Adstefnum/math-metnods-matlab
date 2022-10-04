function c = bisection(func,left_endpoint,right_endpoint,error,varargin)
c=(left_endpoint+right_endpoint)/2;
while left_endpoint < right_endpoint && (func(c))>error
    if func(c)<0 && func(left_endpoint)<0
        left_endpoint=c;
    else
        right_endpoint=c;
    end
    c=(left_endpoint+right_endpoint)/2;
end