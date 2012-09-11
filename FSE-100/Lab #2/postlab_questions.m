% Description: FSE 100 - Lab #2 - MATLAB Practice Script
% Author: Anthony Kosednar
% Date: 09/11/2012

% Define Variables
x = linspace(0,2*pi,100);
g = x;
y = sin(2*x);
h = 2*cos(2*z);

% Do Our Plotting
plot(x,y,'c:+',g,h,'g--*')

% Create our labels
title('Plot of f(x)=sin(2x) and its derivative.')
xlabel('X')
ylabel('Y')
legend('sin(2x)','2cos(2x) - (derivative)')