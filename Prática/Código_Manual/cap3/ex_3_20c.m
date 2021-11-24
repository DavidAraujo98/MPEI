clear
m=1000; N=1e4; n=50;
ms=100:100:1e4;
probs=0*ms; % inicialização a zero
for i=1:length(ms)
    fprintf('tamanho do array=%d...',ms(i));
    [probs(i)]=dardos(n,ms(i),N);
    fprintf('prob.de colisão= %.5f$\n',probs(i));
end
figure
% gráfico
plot(ms,probs,'k.','MarkerSize',8);
xlabel('m (tamanho do array)')
ylabel('prob'),title('probabilidade de colisão para 50 keys')
