function oct_objplot(x, y)
	[f] = fopen(x);
	M = dlmread(f, ' ');
	plot(M(:,1), M(:,2), y)
	axis([-20 max(M(:,2))+20 -20 max(M(:,2))+20])
end