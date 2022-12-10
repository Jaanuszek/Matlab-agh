clear; clc; close all;

N=5;
h=0.01; x=-1:h:1;
a=rand(1,N)*2-1;
f=polyval(a,x);
plot(x,f);

ct=h*(sum(f)-(((f(1)+f(end))/2))),

%calka z funkcji
fs=@(x) polyval(a,x);
cd=integral(fs,x(1),x(end)),

%błąd wzgledny
bct=((ct-cd)/cd)*100,