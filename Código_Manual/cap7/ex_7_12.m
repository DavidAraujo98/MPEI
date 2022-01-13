t=(0:50);
s100=poisspdf(t,20);
y=normpdf(t,20,sqrt(20));
figure
subplot 211
stem(t,s100,'.k','LineWidth',2),hold on
plot(t,y,'k','LineWidth',2),hold off
xlabel('k, x'),ylabel('S100, N(0,1)')
subplot 212
stem(t,s100-y,'.k','LineWidth',2)
xlabel('k'),ylabel('erro')