clc; clear; close all;

x = [1:1:10];
y = 5*rand(1,10);
n = length(x);

plot(x,y,'ro');
hold on;
for i = 1 : n
    z(i)=log(y(i));

    axiyi(i)=x(i)*z(i);
    axi2(i)=(x(i)).^2;
    axy = sum(axiyi);
    ax2 = sum(axi2);
    lny=sum(z);
end

a1=(n*axy-sum(x)*sum(z))/(n*ax2-(sum(x))^2);
a2=(ax2*sum(z)-sum(x)*axy)/(n*ax2-(sum(x))^2);
b = exp(a1);
c=a2;

Y=b*exp(c*x);
plot(x,Y);

%gdzies jest blad w obliczeniach