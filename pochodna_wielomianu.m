function b=pochodna_wielomianu(a)

a=a(:).';
n=length(a)-1;
b = (n:-1:1).*a(1:end-1);