clear; clc; close all;

N=5;
a=rand(1,N)*2-1;
dx=0.01; x=-1:dx:1;
f=polyval(a,x);
plot(x,f);

c=sum(f)*dx-((f(1)+f(end))/2)*dx; %odejmowanie bo tam jest suma od 2 do n-1, a nie wiem jak to zrobic wiec po prostu sie odejmuje wyrazenie dla x1 i xn
c,
