clear; clc; close all;

x=[1 2 3 4 5 6 7 8 9 10];
y=-10 + (10+10)*rand(1,10);
n=length(x);
X=linspace(1,9,9);

    for i=1:(n-1)
        a(i)=y(i);
        b(i)=(y(i+1)-y(i))/(x(i+1)-x(i));
        sk(i)=a(i)+b(i)*(x(i+1)-x(i));
    end

plot(X,sk,'b');
hold on;
plot(X,sk,'ro');
plot(x,y,'bo');
y2=interp1(x,y,X,'linear');
plot(X,y2,'r');
