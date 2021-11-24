% Programa para estimar a função de probabilidade dos resultados do lançamento de um dado
N=50000;
x=ceil(rand(1,N)*6);
% Determinação das frequências
for i=1:6
    freq(i)=sum(x==i);
end
f=freq/N;d=sqrt(f.*(1-f)./N);
% Resultados
fprintf(1,'Para %6.0f experiências:\n',N)
for i=1:6
    fprintf(1,'p(%1.0f)=',i)
    fprintf(1,'%6.4f desv.padrão=%6.2e\n',f(i),d(i))
end
