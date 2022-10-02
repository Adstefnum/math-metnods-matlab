function [res] = der2h2(u,n,h)

res(1) = (4*u(3)-u(4)-5*u(2)+2*u(1))/(h^2);

%res(n) = (2*u(n) - 5*u(n-1) + 4*u(n-2) - u(n-3))/(h^2);
res(n) = (2*u(n)-2*u(n-1)+u(n-2))/h^2;


for i=2:n-1
    res(i) = (u(i+1) -2*u(i)+ u(i-1))/(h^2);
end


end

