function ex5
	close all
	clear

	x=linspace(0,4,20);
	y_one=f(x,-1);
	y_two=f(x,0);
	y_three=f(x,1);

	figure
	plot(x,y_one,'b+:')
	hold on
	plot(x,y_two,'co-')
	plot(x,y_three,'r--')
	title('Solutions to dy/dx = x+2')
	hleg = legend('C=-1','C=0','C=1');
	set(hleg,'Location','NorthWest')
    set(hleg,'Interpreter','none')
	hold off

end

function y = f(x,C)
	y=((x.^2)./2)+2.*x+C;
end