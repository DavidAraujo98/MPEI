clf;figure(2)
N=1e4;
ms=[1e3 1e4 1e5 1e6] % valores para m, cada um num gráfico
ns=1:10:100;         % valores para n, segundo enunciado}
for g=1:4
    ms(g)
    subplot(2,2,g)
    probs=0*ns; % inicializar com zeros
    for i=1:length(ns)
        [p1 probs(i)]=dardos(ns(i),ms(g),N);
    end
    % gráfico
    plot(ns(1:i),probs(1:i),'k*'); xlabel('n'), ylabel('prob')
    title(['m= ' num2str(ms(g))])
end
