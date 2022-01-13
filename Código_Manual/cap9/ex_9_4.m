[x,ef]=cospdf(200000);
histogram(x,20,'Normalization','pdf','Facecolor','none')
hold on
t=linspace(-pi/2,pi/2,10000);
plot(t,ksdensity(x,t),'k','LineWidth',1.5)
legend('histograma','interpolação','Location','South')
