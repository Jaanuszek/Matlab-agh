clear; clc; close all;

x=[0 20 40 60 80 100];
y=[26.0 48.6 61.6 71.2 74.8 75.2];
n= length(x)-1;

xp=50;

suma = 0;

for i = 1 : n+1
    pr = 1;
    for j = 1 :n+1
        if j~=i
            pr= pr*(xp-x(j))/(x(i)-x(j));
        end
    end
    suma=suma + y(i)*pr;
end
yp = suma,



