rng default % para reprodutibilidade de resultados
% geração de 500 amostras segundo uma distribuição qui quadrado
xd=chi2rnd(4,1,500);
% determinação do histogram normalizado a pdf
histogram(xd,20,'Normalization','pdf','Facecolor','none')
hold on
t=linspace(0,25,1000);
% interpolação gaussiana e determinação do valor de b
[f,t,b]=ksdensity(xd,t);
% interpolação e gráficos para 3 valores de b
plot(t,ksdensity(xd,t,'bandwidth',b/4),'-.k','LineWidth',2)
plot(t,ksdensity(xd,t,'bandwidth',b),'k','LineWidth',2)
plot(t,ksdensity(xd,t,'bandwidth',4*b),'--k','LineWidth',2)
xlabel('x'),ylabel('fX(x) estimada')
legend('histograma','b=0.18','b=0.74','b=3')
axis([0 20 0 0.25])
