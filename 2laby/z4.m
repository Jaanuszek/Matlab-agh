a=1; b=-2; c=-3;
delta=b^2-4*a*c;

x1=(-b-delta^(0.5))/(2*a),
x2=(-b+delta^(0.5))/(2*a),
x=[-10:1:10];
y=a*x.^2+b*x+c;
figure;
plot(x,y);
hold on;
plot(x1,0,'ro');
plot(x2,0,'ro');