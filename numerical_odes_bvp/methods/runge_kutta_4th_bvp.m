function [x,y] = runge_kutta_4th_bvp(f,xrange,y_initial,h)
x = xrange(1):h:xrange(2);
n = xrange(2)-xrange(1);

y = y_initial;           
    for i=1:(length(n))
        disp(y(i));
     k_1 = f(x(i),y(i));
    k_2 = f(x(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = f((x(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = f((x(i)+h),(y(i)+k_3*h));
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
    end
end
% https://lpsa.swarthmore.edu/NumInt/NumIntFourth.html
% https://people.sc.fsu.edu/~jburkardt/m_src/velocity_verlet/velocity_verlet.html
