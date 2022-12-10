clear; clc; close all

a=[-9:3:27];
a,
sum(a(2:2:end)),
%b
b=a(a~=0),
S=sum(b)/length(b),
