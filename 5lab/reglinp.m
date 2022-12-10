clear; clc; close all;

x=[0  2 4 6 9 11 12 15 17 19];
y=[5  6 7 6 9 8 8 10 12 12];
X=[0:0.1:19];

n=length(x);
A=[n sum(x); sum(x) sum(x.^2)];
b=[sum(y);sum(x.*y)];
a=A\b,
plot(x,y,'o'); hold on;
ym=a(1)+a(2)*x;
e=y-ym;
Sr=sum(e.^2);
St=sum((y-mean(y)).^2);
R2=(St-Sr)/St

