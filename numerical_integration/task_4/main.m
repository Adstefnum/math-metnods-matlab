clc

clear

close all
R =50;
E =250;

func = @(t) (3500*sin(140*pi*t)*exp(-63*pi*t))^2/R;

% f0 = create_points(func,0,t);
% 
% plot(f0(:,1),f0(:,2))
tval = fzero( @(t) E/simpson(func,0,t,t),1000);
tval