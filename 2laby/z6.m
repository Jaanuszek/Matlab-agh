syms x;

y1=log((x-1)^4);

y2=(abs(x-1))/(4*x.^2+1);

diff(y1,x),
diff(y2,x),

%plot(diff(y1,x),x);
%plot(diff(y2,x),x);

dx=0.01; x=-3:dx:2.5; z=1:0.01:3;
f1=log((x-1).^4);
f2=(abs(x-1))/(4*x.^2+1);

y3=f1(z);
y4=f2(x);
df1=((f1(z)-f1(z-dx))/dx);