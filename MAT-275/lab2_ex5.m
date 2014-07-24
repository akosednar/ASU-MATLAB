function y=f(x)
% Lab #2 - Ex5
	if x==10
		error('the function is undefined at x = 10')
	elseif x<=3
		y=x^2+1;
	elseif x > 5
		y=x/(x-10);
	else
		y=exp(x);
	end
end