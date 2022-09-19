function res = heatflux_forward(p,T,n,h)

    p = p+ 1;
    if p <= n
        res = (-T(p+2)+4*T(p+1)-3*T(p))/(2*h);

     else 
        disp("your value exceeds the list");
    end

end

