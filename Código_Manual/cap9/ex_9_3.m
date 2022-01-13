% geração de uma v.a. com fdp=3x^2/2
clear, close all
rng default
n=100000;t=linspace(-1,1,1000);
x=nthroot(2*rand(1,n)-1,3);
histogram(x,'Normalization','pdf','Facecolor','none')
hold on
plot(t,ksdensity(x,t,'support',[-1;1]),'k','LineWidth',1.5)
legend('histograma','interpolação','Location','North')
 
