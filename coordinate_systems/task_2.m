% Define the position of the particle as a function of time in polar coordinates
r = @(t) 4;
theta = @(t) 0.2;

% Calculate the velocity and acceleration vectors using the finite difference method
h = pi/10; % time step size
t = 0:h:2*pi; % time range
n = length(t); % number of time steps

v = zeros(n,2); % velocity vector
a = zeros(n,2); % acceleration vector

for i = 1:n-1
    v(i,1) = (r(t(i+1)) - r(t(i))) / h; % radial component of velocity
    v(i,2) = (theta(t(i+1)) - theta(t(i))) / h; % angular component of velocity
    a(i,1) = (v(i+1,1) - v(i,1)) / h; % radial component of acceleration
    a(i,2) = (v(i+1,2) - v(i,2)) / h; % angular component of acceleration
end

% Calculate the modulus of the velocity and acceleration vectors
m_v = zeros(n,1);
m_a = zeros(n,1);
for i = 1:n
    m_v(i) = norm(v(i,:)); % modulus of velocity vector
    m_a(i) = norm(a(i,:)); % modulus of acceleration vector
end

% Translate the polar coordinates to Cartesian coordinates
x = r(t) .* cos(theta(t));
y = r(t) .* sin(theta(t));

% Calculate the relative errors between the analytical and numerical differentiations
analytical_v = zeros(n,2); % analytical velocity vector
analytical_a = zeros(n,2); % analytical acceleration vector

% define the analytical velocity and acceleration vectors
analytical_v(:,1) = 4 * sin(0.2); % radial component of velocity
analytical_v(:,2) = 0.8; % angular component of velocity
analytical_a(:,1) = -0.64; % radial component of acceleration
analytical_a(:,2) = 0; % angular component of acceleration

% calculate the relative errors
relative_error_v = abs(analytical_v - v) ./ abs(analytical_v);
relative_error_a =  abs(analytical_a - a) ./ abs(analytical_a);


% Perform numerical integration of the particle's path using the rectangle and trapezoidal methods
path_rectangle = zeros(n,2); % path using rectangle method
path_trapezoid = zeros(n,2); % path using trapezoidal method

% initialize path arrays
path_rectangle(1,:) = [x(1), y(1)];
path_trapezoid(1,:) = [x(1), y(1)];

% calculate path using rectangle and trapezoidal methods
for i = 2:n
    path_rectangle(i,:) = path_rectangle(i-1,:) + v(i-1,:)*h; % rectangle method
    path_trapezoid(i,:) = path_trapezoid(i-1,:) + (v(i-1,:) + v(i,:))*h/2; % trapezoidal method
end

% Print all calculated data to the command window as a table
disp('t (s)    x (m)    y (m)    vx (m/s)    vy (m/s)    ax (m/s^2)    ay (m/s^2)    v (m/s)    a (m/s^2)    relative error v    relative error a');
for i = 1:n
    fprintf('%.2f %.2f %.2f %.2f %.2f %.2f %.2f %.2f %.2f %.2f %.2f\n', t(i), x(i,:), v(i,:), a(i,:), m_v(i), m_a(i), relative_error_v, relative_error_a);
end
