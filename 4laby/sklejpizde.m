function y = sklejpizde( X,Y )
x=linspace(1,15,100);
y=0;
lX=length(X);
d = X(2)-X(1);
for i = 1:lX
k = abs( (x-X(i))/d);
if k <=1
y = y + 1 - k*Y(i);
end
end
plot(x,y); grid on; axis on;
end