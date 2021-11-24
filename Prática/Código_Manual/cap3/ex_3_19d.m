clf,figure(3)
N=1e4;
n=100; % valores para n, segundo enunciado
ms=100:100:10000;% escolha possivel
probs=0*ms; % inicializa a zeros
for i=1:length(ms)
[p1 probs(i)]=dardos(n,ms(i),N);
end
% gráfico
plot(ms,probs,'k.','markersize',10);
xlabel('n'), ylabel('prob'), title(['n= ' num2str(n)])
