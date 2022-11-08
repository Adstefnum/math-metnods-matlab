

function [x, y] = euler_sys( f, xRange, y_initial, h )
x(1) = xRange(1);
numSteps = ( xRange(2) - xRange(1) ) /h ;
y(1,:) = y_initial;
for k = 1 : numSteps+1
x(k + 1) = x(k) + h; 
y(k+1,:) = y(k,:) + h * f( x(k), y(k,:) );
end
