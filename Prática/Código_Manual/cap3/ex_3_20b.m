clear ;
m=1000; N=1e4;
ns=[1:2:80 81:10:250]; % por escolha
probs=0*ns; % inicialização a zero
for i=1:length(ns)
    fprintf('nº de keys=%d...',ns(i));
    [p1 probs(i)]=dardos(ns(i),m,N);
    fprintf('prob.de colisão=%.5f$\n',probs(i));
end
figure
% gráfico
plot(ns,probs,'k'),hold on
plot(ns,probs,'k.','MarkerSize',8);
ylabel('prob'),xlabel ('n (tamanho do array')
title('Probabilidade de colisão para um array de 1000')
