function [res] = bending_moment(u,n,h,E,I)

res(1,1) = (E*I).*(4*u(3)-u(4)-5*u(2)+2*u(1))/(h^2);

%res(n) = (2*u(n) - 5*u(n-1) + 4*u(n-2) - u(n-3))/h^2;
res(n,1) = (E*I).*(2*u(n)-2*u(n-1)+u(n-2))/(h^2);


for i=2:n-1
    res(i,1) = (E*I).*(u(i+1) -2*u(i)+ u(i-1))/(h^2);
end

end

