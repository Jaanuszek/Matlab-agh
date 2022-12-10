function y = plot_3degree(a, b, c, d, x1, x2)
x=[a b c d];
h= -10:0.01:10;
y = polyval(x, h);
plot(h,y,'-r');
axis ([x1,x2,-10,40 ]);
xlabel('x');
ylabel('f(x)');
title('f(x)=-2x^3+2x+4')
grid on;