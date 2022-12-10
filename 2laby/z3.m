clear; clc; close all;

y=linspace(-3,3,100);
tab = [];

for i=1:length(y)
    if y(i)>2.5
        tab(end+1) = log((y(i)-1)^4);
    elseif y(i) == 2.5
        tab(end+1) = 1;
    else 
        tab(end+1) = (abs(y(i)-1))/(4*y(i).^2+1);
    end
end

plot(tab)
hold on


