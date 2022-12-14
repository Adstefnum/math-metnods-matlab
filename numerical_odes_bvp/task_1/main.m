clc

clear

close all

format short g



a = 1;
b = 3.5;
n = 100;
h = (b-a)/n;
A = zeros(n+1,n+1);
A(1,1)=1;
A(n+1,n+1) = 1;
r = 1;
j = 1;
for i=2:n+1
    r = r+h;
   
    if j+2 <= n+1
         A(i,j) = (r);
            
        A(i,j+1) = (-(2*r+h));
        
        A(i,j+2)= ((r+h));        
    end
    j = j+1;
end
b=-500*h^2*ones(n+1,1);

b(1) = 600;
b(n+1) = 25;
x=linspace(1,3.5,n+1);
y=A\b
plot(x,y)


 
