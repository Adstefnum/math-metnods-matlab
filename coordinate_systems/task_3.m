% Define the time range over which you want to calculate the particle's velocity and acceleration. For example, you can use t = 0:0.1:2 to define a time range with a step size of h = 0.1 from t = 0 to t = 2.
% 
% Calculate the position of the particle at each time step using the equation r = 0.7*t. This will give you the x and y coordinates of the particle's position in the Cartesian plane.
% 
% Calculate the velocity vector at each time step using the finite difference method. To do this, you can use the following code:


% Preallocate arrays for the x and y components of the velocity vector
vx = zeros(size(t));
vy = zeros(size(t));

% Use the finite difference method to calculate the x and y components of the velocity vector
for i = 2:length(t)
  vx(i) = (r(i) - r(i-1)) / h;
  vy(i) = (y(i) - y(i-1)) / h;
end

% Preallocate arrays for the x and y components of the acceleration vector
ax = zeros(size(t));
ay = zeros(size(t));

% Use the finite difference method to calculate the x and y components of the acceleration vector
for i = 2:length(t)
  ax(i) = (vx(i) - vx(i-1)) / h;
  ay(i) = (vy(i) - vy(i-1)) / h;
end

% Convert the position, velocity, and acceleration vectors to polar coordinates using the cart2pol function. This will give you the radius, angle, and angular velocity of the particle in the polar plane.
% 
% Calculate the radial and angular components of the velocity vector using the following equations:

vr = vx .* cos(theta) + vy .* sin(theta);
vt = -vx .* sin(theta) + vy .* cos(theta);

% Calculate the radial, normal, Coriolis, and angular components of the acceleration vector using the following equations:
ar = ax .* cos(theta) + ay .* sin(theta);
an = -ax .* sin(theta) + ay .* cos(theta);
ac = 2 * vt;
at = -ar - an - ac;


% To determine the time at which the radial acceleration component is zero, you can use the fsolve function to find the root of the nonlinear equation ar = 0.
% 
% To calculate the angle when the radial acceleration is zero, you can use the equation theta_zero = atan2(y, x), where x and y are the x and y coordinates of the particle at the time when the radial acceleration is zero.
% 
% To determine the time at which the radial and angular acceleration components have equal magnitude, you can use the fsolve function to find the root of the nonlinear equation ar = at.

% To perform numerical integration of the particle's path using the rectangle method, you can use the following code:

% Preallocate arrays for the x and y components of the integrated path
x_int = zeros(size(t));
y_int = zeros(size(t));

% Use the rectangle method to perform numerical integration
for i = 2:length(t)
  x_int(i) = x_int(i-1) + 0.5 * h * (x(i) + x(i-1));
  y_int(i) = y_int(i-1) + 0.5 * h * (y(i) + y(i-1));
end
% To perform numerical integration using the trapezoidal method, you can use the following code:


% Preallocate arrays for the x and y components of the integrated path
x_int = zeros(size(t));
y_int = zeros(size(t));

% Use the trapezoidal method to perform numerical integration
for i = 2:length(t)
  x_int(i) = x_int(i-1) + 0.5 * h * (x(i) + x(i-1));
  y_int(i) = y_int(i-1) + 0.5 * h * (y(i) + y(i-1));
end




