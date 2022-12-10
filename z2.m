clear; clc; close all;

plot([1 1], [1 5], 'r', 'LineWidth',2);
hold on;
plot([1 2], [3 5],'r', 'LineWidth',2);
plot([1 2], [3 1],'r', 'LineWidth',2);
plot([3 4], [5 5],'b', 'LineWidth',2);
plot([4 4], [5 2],'b', 'LineWidth',2);
r = 0.5; a = 3.5; b = 2;
t = linspace(0,2*pi,200); 
x = r*cos(t)+a;
y =-r*sin(t) +b; 
plot(x,y,'b', 'LineWidth',2);
title('Kuba Jabłoński')
axis ([0 6 0 6]);