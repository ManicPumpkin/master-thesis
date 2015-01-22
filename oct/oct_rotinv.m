clc

fprintf("RotationInvariant\n");
fprintf("=================\n\n");
files  = {"tri_00_" "tri_45_" "tri_135_" "tri_225_" "tri_315_"};
colors = {'k' 'r' 'g' 'b' 'm' 'c' 'y'};

fprintf("--> Setting up figure window\n");
figure;
hold on;
grid on;

fprintf("--> Calculating rotation invariant contours\n");
for idx = 1:length(files)
	fprintf(["\t--> " files{idx} "tra.dft\n"]);
	[f] = fopen([files{idx} "tra.dft"]);
	traw = dlmread(f, " ");
	[f] = fopen([files{idx} "tra_dis.dft"]);
	tdis = dlmread(f, " ");

	alpha = 360 - tdis(1, 2);
	angle = 2 * pi / 360 * alpha;
	r = [cos(angle) -sin(angle); sin(angle) cos(angle)];
	trot = traw * r;

	fprintf(["\t\t--> Calculate DEG angle: %f\n"], alpha);
	fprintf(["\t\t--> Calculate RAD angle: %f\n"], angle);
	fprintf(["\t\t--> Setting up rotation matrix\n"]);
	fprintf(["\t\t--> Plot results\n\n"]);

	plot(trot(:, 1), trot(:, 2), colors{idx});
end

fprintf("\t--> Setting axis equal");
axis("equal");

fprintf("\t--> Done.\n\n");
