close all; clear; clc;
format long;
f = @(x) x^3-5;
df = @(x) 3*x^2;
e=0.001;
x=[0:0.1:10];
 n=length(x);
    for i=1:n
        while abs(f(x(i))<e && abs(((f(x(i))/df(x(i)))>e 
                x(i+1)=x(i)-f(x(i))/df(x(i));
         break
        end
    end
    x,
