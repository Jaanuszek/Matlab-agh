close all;
x= linspace(-10,10);
y= linspace(-10,10);
z=sin(x)+cos(y);

figure;
hold on;
subplot(3,2,1);
plot(z,x);
plot(z,y);

subplot(2,1,2);
plot(z,x);
plot(z,y);

subplot(2,3,3);
plot(z,x);
plot(z,y);