function I = rect(func,a,b,n)
h=(b-a)/n;
s=0;
for i =0:n-1
    xn= a + (i * h);
    s = s + func(xn);
end
I = h * s;
end

