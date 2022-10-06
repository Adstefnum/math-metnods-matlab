function F = root2d(x,y)
F(1) = y - 0.5*(exp(x/2)+exp(-x/2));
F(2) = 9*x^2 +25*y^2-225;
end