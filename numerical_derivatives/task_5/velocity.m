function res = velocity(r,phi,n,h)
r_comp = first_derivative(r,n,h);
phi_comp = first_derivative(phi,n,h);
vel_diff = (r_comp.^2) + r.*(phi_comp.^2);
res = sqrt(vel_diff);
end


