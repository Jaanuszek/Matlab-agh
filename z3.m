clear; clc; close all;
a = -2:0.01:3;
x = [1 0 2 4];
y=polyval(x,a);
plot(x,y,'r');
axis ([-2 3 -10 80]);
xlabel('x');
ylabel('f(x)');
title('f(x)=-2x^3+2x+4')
grid on;
