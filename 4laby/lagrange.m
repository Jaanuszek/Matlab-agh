function p = lagrange( X,Y )
n= length(X);
x=linspace(X(1),X(end),100);
y=0;
for i=1:1:n
m=1;
l=1;
for j=1:1:n
if (j~=i)
l=l.*(x-X(j));
m=m*(X(i)-X(j));
end
end
y=y+ (l./m).*Y(i);
end
plot(x,y);
end
function [ y ] = lagrangefit( X, Y, x )
%polifit
n = length( X );
y = 0;
for i = 1:n
m = 1;
l = 1;
for j= 1:n
if j ~= i
l = l.* (x-X(j));
m = m * (X(i)-X(j));
end
end
y = y + (l/m)*Y(i);
end
plot(x,y);
hold on;
grid on;
plot(X,Y,'ro')
end
