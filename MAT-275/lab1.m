close all
clear

% #1
theta=[0,pi/4,pi/2,(3*pi)/4,(5*pi)/4];
r=2;
x=r*cos(theta);
y=r*sin(theta);
radius=(x.^2+y.^2).^(1/2)

% #2
t=linspace(1,10,91);
y=(exp(t./10).*sin(t))./(t.^2+1);
figure
plot(t,y,'b+:')
hold on
title('Plot for y=(e^(t/10)*sin(t))/(t.^2+1)')
plot(t,y,'o-')
hold off

% #3
t=linspace(0,20,20);
x=sin(t);
y=cos(t);
z=t;
figure
plot3(x,y,z)
hold on
title('Problem #3 Plot - Circular Helix Plot')
hold off

% #4
x=linspace(0,pi,100);
y=cos(x);
z=1-(x.^2/2)+(x.^4/24);
figure
plot(x,y,'r',x,z,'--')
hold on
grid on
title('Problem #4 Plot')
hold off

% #5
%  See ex5.m for the code
ex5

% #6 
f_anon = @(x,y) x.^3+(y.*exp(x))/(x+1);
f_anon(2,-1)

% Note: the lab instructions ask us to clear the windows before this next function call
clear 
f(2,-1)
