function res = bisection(func,x0,x1,error,varargin)
mid=(x0+x1)/2;
res = 0;
while x0 < x1 && (func(mid))<=error
    if func(mid) == 0
        break
    end
    if func(x0)*func(mid)<0
        x0=mid;
    else
        x1=mid;
    end
    res = mid;
    mid=(x0+x1)/2;
end