rng default % para replicação
%Início (1): geração de duas V.A. uniformes  em(0,1)
v1=rand(1,50000);v2=rand(1,50000);
% Transformação dos passos 2 e 3 para obter X e Y
x=sqrt(-2*log(v1));y=cos(2*pi*v2);
% Passo 4: cálculo de Z=XY
z=x.*y;

% Apresentação de resultados
figure
N=50;
subplot 311
histogram(x,N,'Normalization','pdf','Facecolor','none')
hold on 
xlabel('x'),ylabel('fX(x)') 
t=linspace(0,5,1000); 
plot(t,ksdensity(x,t),'k','Linewidth',2)
legend('histograma','Interpolação','Location','NorthEast')
subplot 312
histogram(y,N,'Normalization','pdf','Facecolor','none')
xlabel('y'),ylabel('fY(y)')
hold on
t=linspace(-1,1,10000);
plot(t,ksdensity(y,t,'support',[-1;1]),'k','Linewidth',2)
legend('histograma','Interpolação','Location','North')
axis([-1.02 1 0 3])
subplot 313
histogram(z,N,'Normalization','pdf','Facecolor','none')
hold on
t=linspace(-5,5,1000);
plot(t,ksdensity(z,t),'k','Linewidth',2)
xlabel('z'),ylabel('fZ(z)')
legend('histograma','Interpolação','Location','NorthEast')
axis([-5 5 0 0.4])