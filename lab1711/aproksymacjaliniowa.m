clc; clear; close all;

x = [0:1:10];
y = [8.14723686393179	9.05791937075619	1.26986816293506	9.13375856139019	6.32359246225410	0.975404049994095	2.78498218867048	5.46881519204984	9.57506835434298	9.64888535199277	1.57613081677548]
n = length(x);
plot(x,y,'ro');
hold on;
for i = 1 : n
    axiyi(i)=x(i)*y(i);
    axi2(i)=(x(i)).^2;
    axy = sum(axiyi);
    ax2 = sum(axi2);
end

a1=(n*axy-sum(x)*sum(y))/(n*ax2-(sum(x))^2);
a2=(ax2*sum(y)-sum(x)*axy)/(n*ax2-(sum(x))^2);

X=[0:1:10];

Y=a1*x+a2;
plot(x,Y);
for i = 1 : n 
    S(i) = (a1 + a2*x(i)-y(i));
    Sn = sum (S);
end

%[Coeff, Qpoly] = polyfit(x, y ,1);
%Ypoly = polyval(Coeff, x);
%plot(x, Ypoly);

%[dModel, Qfit] = fit(x',y','poly1');
%dFit = dModel(x);
%plot(x,dFit)
