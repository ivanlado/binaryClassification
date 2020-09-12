clear; close all; clc

dataFileName = 'data2.txt';
data = load(dataFileName);
x = data(:, 1:end-1);
y = data(:, end);

degree = 6;
lambda = 1;
betas = minimize(x, y, degree, lambda)
u = linspace(-1, 1.5, 50);
v = linspace(-1, 1.5, 50);
z = zeros(length(u), length(v));

for i = 1:length(u)
    for j = 1:length(v)
        z(i,j) = mapFeature([u(i), v(j)], degree)*betas;
    end
end
z = z'; 

plotData(x, y);
hold on;
contour(u, v, z, [0, 0], 'LineWidth', 2);