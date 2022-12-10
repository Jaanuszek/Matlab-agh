close all; clear; clc;
format long;
f = @(x) x^3-5;
df = @(x) 3*x^2;
e=0.001;
x=1; i=0; imax=200;
n=length(x);
  while (abs(f(x))<e) && (abs((f(x))/df(x))<e) && (i<imax)
                x1=x-f(x)/df(x);
                y=f(x);
                i=i+1;
  break
end

