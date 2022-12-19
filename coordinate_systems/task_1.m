x0 = [0; 0]; % initial position vector (x, y)
v0 = [0.1; 0.2]; % initial velocity vector (vx, vy)
a0 = [1; 0.3]; % initial acceleration vector (ax, ay)
h = 0.1; % time step size
t = 0:h:10; % time range (t=0 to t=10 with step size h)

n = length(t);
x = zeros(2,n);
v = zeros(2,n);
a = zeros(2,n);

for i = 1:n % loop through the time range
      x(:,i) = x0 + v0*t(i) + 0.5*a0*t(i)^2; % calculate position vector at time t(i)
    v(:,i) = v0 + a0*t(i); % calculate velocity vector at time t(i)
    a(:,i) = a0; % calculate acceleration vector at time t(i)


    m_x = norm(x); % modulus of position vector
    m_v = norm(v); % modulus of velocity vector
    m_a = norm(a); % modulus of acceleration vector


    plot(x(1,:), x(2,:)); % plot the x and y components of the position vector

    pause(0.1); % pause for 0.1 seconds before continuing the loop
    
    disp([t; x'; v'; a'; m_x'; m_v'; m_a']); % display data as a table


end

