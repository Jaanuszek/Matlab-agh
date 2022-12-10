close all; clc; clear;

f = @(x) exp(x);


N = 10000;
a = 0;
b = 1;
x1=linspace(a,b);
M=1.4*max(f(x1));

for i = 1:N

    x_val = rand(1)*(b-a)+a;
    y_val = rand(1)*M;


    fx=f(x_val);
    if y_val<fx
        under(i,1) = x_val;
        under(i,2) = y_val;
    else 
        above(i,1) = x_val;
        above(i,2) = y_val;
    end
end

under2(:,1) = nonzeros(under(:,1));
under2(:,2) = nonzeros(under(:,2));
above2(:,1) = nonzeros(above(:,1));
above2(:,2) = nonzeros(above(:,2));

plot(under2(:,1), under2(:,2), 'bo');
hold on;
plot(above2(:,1), above2(:,2), 'ro');
length(under2),

cd=length(under2)/N*(M*(b-a)),
ct=integral(f,a,b),

b=abs(((cd-ct)/ct))*100,
