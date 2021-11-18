t=0:0.01:10;
y1=unidcdf(t,10);plot(t,y1,'k','LineWidth',2),hold on
y2=unifcdf(t,0,10);plot(t,y2,'--k','LineWidth',2),hold off
xlabel('x'),ylabel('P{<x]')
legend('dist.discreta','dist.contínua','Location','SouthEast')
