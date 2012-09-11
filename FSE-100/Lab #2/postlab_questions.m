x = linspace(0,2*pi,100);
g = x;
y = sin(2*x);
h = 2*cos(2*z);
plot(x,y,'c:+',g,h,'g--*')
title('Plot of f(x)=sin(2x) and its derivative.')
xlabel('X')
ylabel('Y')
legend('sin(2x)','2cos(2x) - (derivative)')