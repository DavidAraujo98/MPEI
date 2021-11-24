x=rand(1,100000)
histogram(x,50,'Normalization','pdf','Facecolor','none')
hold on
t=linspace(0,1,500);
plot(t,ksdensity(x,t,'support',[-0.001;1.001]),...
'k','LineWidth',1.5)
legend('histograma','interpolação','Location','South')
xlabel('x'),ylabel('fX(x)')
