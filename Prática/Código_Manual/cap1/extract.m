% subrotina que simula a extração de n bolas de uma urna contendo m, numeradas de 1 a m, não havendo reposição
function y=extract(n,m)
if n>m , error('n>m');end
x=(1:m);
for i=1:n
    ind=ceil((m-i+1)*rand);
    y(i)=x(ind);
    x=[x(1:ind-1) x(ind+1:m-i+1)];
end
