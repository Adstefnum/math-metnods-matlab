clc

clear

close all

format short g

h = 0.5;
A =[1 0 0 0 0 0;
    1.5*1 -(2*1.5+h) (1.5+h)*1 0 0 0; 
    0 2*1 -(2*2+h) (2+h)*1 0 0;
    0 0 2.5*1 -(2*2.5 +h) (2.5+h)*1 0; 
    0 0 0 3*1 -(2*3 +h) (3+h)*1;
    0 0 0 0 0 1];

b = [600;
     -500*h^2;
     -500*h^2;
    -500*h^2;
     -500*h^2;
    25];

x=linspace(1,3.5,6);
y=A\b
plot(x,y)

% n = 6;
% A = zeros(n,n);
% A(1:1)=1;
% A(6:6) = 1;
% r = 1;
% k = 0;
% for i=2:n-1
%     r = r+0.5;
%     for j=1:n
%             if j+2 < n
%          A(i:j+k) = (r);
%             
%         A(i:j+k+1) = (-(2*r+h));
%         
%         A(i:j+k+2)= ((r+h));
%          k = k+1;
%             end
%     end
% end
% 
% A

 
