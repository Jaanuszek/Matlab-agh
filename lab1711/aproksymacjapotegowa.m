clc; clear; close all;

x = [1:1:10];
y = 5*rand(1,10);
n = length(x);

plot(x,y,'ro');
hold on;
for i = 1 : n
    u(i)=log(x(i));
    z(i)=log(y(i));

    axiyi(i)=u(i)*z(i);
    axi2(i)=(u(i)).^2;
    axy = sum(axiyi);
    ax2 = sum(axi2);
    lny=sum(z);
    lnx=sum(u);
end

a1=(n*axy-sum(u)*sum(z))/(n*ax2-(sum(u))^2);
a2=(ax2*sum(z)-sum(u)*axy)/(n*ax2-(sum(u))^2);
b = exp(a1);
c=a2;

Y=b*x.^c;
plot(x,Y);