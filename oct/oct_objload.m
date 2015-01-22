file = "pen";

%[f] = fopen([file '_raw.dft']);
%raw = dlmread(f, ' ');

%[f] = fopen([file '_str.dft']);
%str = dlmread(f, ' ');

%[f] = fopen([file '_tra.dft']);
%tra = dlmread(f, ' ');

[f] = fopen('pen_8_180_1.00_00_tra.dft');
p1 = dlmread(f, ' ');

[f] = fopen('pen_8_036_1.00_00_tra.dft');
p2 = dlmread(f, ' ');

[f] = fopen('pen_8_072_1.00_00_tra.dft');
p3 = dlmread(f, ' ');

[f] = fopen('pen_8_324_1.00_00_tra.dft');
p4 = dlmread(f, ' ');

[f] = fopen('pen_8_180_1.00_00_coe_abs.dft');
c1 = dlmread(f, ' ');

[f] = fopen('pen_8_036_1.00_00_coe_abs.dft');
c2 = dlmread(f, ' ');

[f] = fopen('pen_8_072_1.00_00_coe_abs.dft');
c3 = dlmread(f, ' ');

[f] = fopen('pen_8_324_1.00_00_coe_abs.dft');
c4 = dlmread(f, ' ');

figure
hold on
grid on
plot(p3(:,1), p3(:,2));
plot(p2(:,1), p2(:,2), 'g');
plot(p1(:,1), p1(:,2), 'r');
plot(p4(:,1), p4(:,2), 'm');

figure
hold on
grid on
plot(c3(:,1), c3(:,2));
plot(c2(:,1), c2(:,2), 'g');
plot(c1(:,1), c1(:,2), 'r');
plot(c4(:,1), c4(:,2), 'm');