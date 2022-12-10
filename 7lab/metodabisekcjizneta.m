close all; clear; clc;
format long
f=@(x) x^3-5;
x=[-10:0.1:6];
n=20;
a=x(1); b=x(end);
c = f(a); d = f(b);
if c*d < 0
    for i = 1:n
        x=(a+b)/2;
        y=f(x);
        if y == 0
            a=x;
            b=x;
            break
        end
        if c*y<0
            b=x;
        else
            a=x;
        end
        x=(a+b)/2,
        e=(b-a)/2,
    end
end