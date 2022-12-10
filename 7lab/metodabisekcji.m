%Autorzy Jakub Jabłoński, Jakub Puch
close all; clc; clear;
%zad 1 a)
f=@(x) x^3-5;
x=[-10:0.1:6];
a=x(1); b=x(end); n=100;
e=0.000001;
tic
for i = 1: n
    s=(a+b)/2;
    while abs(f(x(i)))<e || b-a >e
        if(f(a)*f(s)<0)
            b=s;
        else
            a=s;
        end
       s=(a+b)/2;
       X(i)=s;
    break
    end
end
X,
disp('Czas dla metody bisekcji:')
toc

tic
p=[1 0 0 -5];
roots(p);
disp('Czas dla funkcji matlabowej:');
toc

%sprawdzanie ilosci iteracji
length(X),

%ilosc iteracji (zad 2)
%dla e1=0.01 i = 11
%dla e2=0.001 i = 14
%dla e3=0.0001 i =18 
%dla e4=0.00001 i = 21
%dla e5=0.000001 i = 24

X=1:1:5;
Y=[11 14 18 21 24];
plot(X,Y,'LineWidth',2);
hold on;
grid on;
plot(X,Y,'ro');
axis([0 6 10 25])
xlabel('Kolejne wartosci błedu maksymalnego')
ylabel('Ilość iteracji')

