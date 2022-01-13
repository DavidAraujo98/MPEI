histogram(x,50,'Normalization','pdf','Facecolor','none');
hold on
t=linspace(-5,5,1000);
plot(t,normpdf(t),'--k','Linewidth',2)
legend('histograma','função N(0,1)')