function center = bisection(func,left_endpoint,right_endpoint,error,varargin)
center=(left_endpoint+right_endpoint)/2;
while left_endpoint < right_endpoint && (func(center))>error
    if func(center) == 0
        break
    end
    if func(center)<0 && func(left_endpoint)<0
        left_endpoint=center;
    else
        right_endpoint=center;
    end
    center=(left_endpoint+right_endpoint)/2;
end