clear; clc; close all;
%a
M = randi([0,10], 5,9),
N=M./max(M),
%b
M= randi([0,1], 5),
if triu(M)==1
    disp("git");
else
    disp("niegit");
end