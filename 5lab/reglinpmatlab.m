clear; clc; close all;

x=[0  2 4 6 9 11 12 15 17 19];
y=[5  6 7 6 9 8 8 10 12 12];

mx=(sum(x))/length(x);
my=(sum(y))/length(y);

for i=1:length(x)
    ap(i)=(x(i)-mx)*(y(i)-my);
    an=sum(ap);
end

for k=1:length(x)
    mianownik(k)=(x(k)-mx)^2;
    mian = sum(mianownik);
end

a = an/mian;
b = my - a*mx;

f=a*x+b;

plot(x,y,'o') ;
hold on;
plot(x,f);


