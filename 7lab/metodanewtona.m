%Autorzy Jakub Jabłoński, Jakub Puch
close all; clear; clc;
%metoda Newtona z1 b)
tic
f = @(x) x^3-5;
df = @(x) 3*x^2;
x0=10; e=0.000001; i=0; imax=100;
while abs(f(x0))>e && abs(f(x0)/df(x0))>e && i<=imax
        x0=x0-f(x0)/df(x0);
        i=i+1;
end
x0,
disp('Czas dla metody Newtona:');
toc
%liczenie czasu dla funkcji matlabowej(zad 3)
tic
p=[1 0 0 -5];
roots(p);
disp('Czas dla funkcji matlabowej:');
toc

%ilosc iteracji (zad 2)
%dla e1=0.01 i = 6
%dla e2=0.001 i = 7
%dla e3=0.0001 i =7 
%dla e4=0.00001 i = 8
%dla e5=0.000001 i = 8

X=1:1:5;
Y=[6 7 7 8 8];
plot(X,Y,'LineWidth',2);
hold on;
grid on;

plot(X,Y,'ro');
axis([0 6 5 10])
xlabel('Kolejne wartosci bledu maksymalnego')
ylabel('Ilość iteracji')
