clc

fprintf("Load Data\n");
fprintf("=========\n\n");
files  = {"tri_00_" "tri_45_" "tri_135_" "tri_225_" "tri_315_"};
colors = {'k' 'r' 'g' 'b' 'm' 'c' 'y'};

fprintf("--> Setting up figure window\n");
figure;
hold on;
grid on;

fprintf("--> Loading data\n");
for idx = 1:length(files)
	fprintf(["\t--> " files{idx} ".dft; "]);
	[f] = fopen([files{idx} ".dft"]);
	traw = dlmread(f, " ");

	fprintf(["Plot;\n"]);
	plot(trot(:, 1), trot(:, 2), colors{idx});
end

fprintf("\t--> Setting axis equal");
axis("equal");

fprintf("\t--> Done.\n\n");
