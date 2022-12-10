clear; clc; close all;

N=5;
a=rand(1,N)*2-1;
h=0.01; x=-1:h:1;
x1=x(1);
xn=x(end);
xi=x+h/2;
f=polyval(a,x);
f1=polyval(a,xi);


cp=h*(sum(f));
cp,


%calkowanie
fs=@(x) polyval(a,x)
cd=integral(fs,x1,xn),

%bład wzgledny
bcp=((cp-cd)/cd)*100,