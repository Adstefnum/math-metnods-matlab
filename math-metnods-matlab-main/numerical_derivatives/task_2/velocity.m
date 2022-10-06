function [res] = velocity(u,n,h)
res(1) = (-u(3)+4*u(2)-3*u(1))/h;
res(n) = (3*u(n)-4*u(n-1)+u(n-2))/(2*h);

for i=2:n-1
    res(i) = (u(i+1)-u(i-1))/(2*h);
end

end

