function b=calka_z_wielomianu(a)

a=a(:).';
n=length(a)-1;
b = [1./(n+1:-1:1).*a , 0];