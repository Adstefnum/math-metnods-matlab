function I = simpson(func,a,b,n)
Odd = 0;
Even = 0;
h = (b - a)/n;
X = func(a)+func(b);
    for i = 1:2:n-1
        xi=a+(i*h);
        Odd=Odd+func(xi);
    end

    for i = 2:2:n-2
        xi=a+(i*h);
        Even=Even+func(xi);
    end
I = (h/3)*(X+4*Odd+2*Even);
end

