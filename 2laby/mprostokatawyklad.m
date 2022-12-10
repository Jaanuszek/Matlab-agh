clear; clc; close all;

N=5;
a=rand(1,N)*2-1;
dx=0.01;
x=-1:0.01:1;
f=polyval(a,x);
plot(x,f);

c=sum(f)*dx;
c,