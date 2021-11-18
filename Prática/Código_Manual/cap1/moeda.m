% Esta função gera uma sucessão aleatória de n resultados do lançamento de uma moeda representados por C para "caras" e R para "coroas"
function y=moeda(n)
if nargin==0
    n=1;
end
z=round(rand(1,n));
y(1:n)='C';
y(find(z==0))='R';
return