function I = trapezoidal(func,a,b,n)
h=(b - a)/n; 

X=func(a)+func(b);
  
R=0;
for i = 1:1:n-1
    xi=a+(i*h);
    R=R+func(xi);
end
  
I=(h/2)*(X+2*R);
end

