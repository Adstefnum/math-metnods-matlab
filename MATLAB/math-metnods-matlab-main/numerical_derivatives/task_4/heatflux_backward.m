function res = heatflux_backward(p,T,h)

    p = p-1;
    if p >= 1
        res = ((3*T(p)-4*T(p-1)+ T(p-2)))/(2*h);

    else 
        disp("your value exceeds the list");
    end

end
