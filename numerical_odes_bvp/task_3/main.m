clc
clear all
close all
x(1) = 0.01; % initial position, meters
v(1) = 0; % initial velocity, m/s
Deltat = 0.5; % time increment, s
x(2) = x(1) + v(1)*Deltat; 

k = 10; % Newtons / meter
m = 2; % kilograms

Tfinal = 8.0; % ending time, seconds
t = 0:Deltat:Tfinal; 
N = length(t); 
for j=3:N;
 x(j) = 2*x(j-1) - x(j-2) + Deltat*Deltat*(-1.0*k/m)*x(j-1);
 v(j-1) = (x(j) - x(j-2))/ (2*Deltat);
end

v(N) = (x(N)-x(N-1))/Deltat; 
figure; plot(t, x, 'ko:'); grid on; 
xlabel('Time, sec. ')
