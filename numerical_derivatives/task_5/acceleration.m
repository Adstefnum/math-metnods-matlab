function [res] = acceleration(r,phi,n,h)
left_comp = (second_derivative(r,n,h) - r.*(first_derivative(phi,n,h).^2)).^2;
right_comp = ((r .* second_derivative(phi,n,h)) + (2.*first_derivative(r,n,h).*first_derivative(phi,n,h))).^2;
acc_diff = left_comp + right_comp;
res = sqrt(acc_diff);

end

