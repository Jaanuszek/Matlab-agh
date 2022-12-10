close all; clc; clear;

N=5;
n=10000;
a=rand(1,N)*2-1;
xa=2;
xb=3;
dx=0.01; x=0:dx:1; x1=(xb-xa)*rand(1,n);
f=polyval(a,x1);
plot(x1,f);
srednia = sum(f)/n;
r=srednia*(0-1),

%calka
fs = @(x1) polyval(a,x1);
cd = integral(fs,x1(1),x1(end)),

