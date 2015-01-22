function oct_objdraw(x, y)
	plot(x(:,1), x(:,2), y)
	axis([-20 max(x(:,2))+20 -20 max(x(:,2))+20])
end