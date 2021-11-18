% Esta função gera uma sucessão aleatória de n resultados do lançamento de um dado
function y=dado(n)
if nargin==0
   n=1;
end
y=ceil(rand(1,n)*6);