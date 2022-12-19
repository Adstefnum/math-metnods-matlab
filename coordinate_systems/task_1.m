x0 = [0; 0]; % initial position vector (x, y)
v0 = [0.1; 0.2]; % initial velocity vector (vx, vy)
a0 = [1; 0.3]; % initial acceleration vector (ax, ay)
h = 0.1; % time step size
t = 0:h:10; % time range (t=0 to t=10 with step size h)

n = length(t);
x = zeros(n,2);
v =  zeros(n,2);
a =  zeros(n,2);
m_x = zeros(n,2);
m_v =  zeros(n,2);
m_a =  zeros(n,2);

figure; % create a new figure window
hold on; % allow multiple plots to be overlaid on the same figure

for i = 1:n % loop through the time range
      x(i,:) = x0 + v0*t(i) + 0.5*a0*t(i)^2; % calculate position vector at time t(i)
    v(i,:) = v0 + a0*t(i); % calculate velocity vector at time t(i)
    a(i,:) = a0; % calculate acceleration vector at time t(i)


    m_x(i) = norm(x(i,:)); % calculate modulus of position vector at time t(i)
    m_v(i) = norm(v(i,:)); % calculate modulus of velocity vector at time t(i)
    m_a(i) = norm(a(i,:)); % calculate modulus of acceleration vector at time t(i)


    plot(x(i,1), x(i,2),'.'); % plot the x and y components of the position vector

    pause(0.1); % pause for 0.1 seconds before continuing the loop
    
    disp([t; x'; v'; a'; m_x'; m_v'; m_a']); % display data as a table


end

drawnow; % update the plot

