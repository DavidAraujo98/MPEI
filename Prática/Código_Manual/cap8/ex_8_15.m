rng default % para garantir  replicabilidade
N=100000;p=0.95;
x=randi(6,1,N)+randi(6,1,N);
y=zeros(1,N);
y(x==8)=1;
t=(1:N);
freqr=cumsum(y)./t;
zalfa2=norminv(1-(1-p)/2);
delta=zalfa2*sqrt(freqr.*(1-freqr)./t);
lsup=freqr+delta;linf=freqr-delta;
semilogx(t(100:100:N),freqr(100:100:N),'k','LineWidth',2)
hold on
semilogx(t(100:100:N),linf(100:100:N),'-.k','LineWidth',2)
semilogx(t(100:100:N),lsup(100:100:N),'--k','LineWidth',2)
hold off
xlabel('número de amostras'),ylabel('prob.')
legend('freq.relativa','linferior','lsuperior')
fprintf(1,'Valor teórico de P[soma=8]=%6.3f\n',5/36);
fprintf(1,'Valor estimado de P[soma=8]=%6.3f\n',freqr(N));
fprintf(1,'Intervalo de confiança de %4.2f',p)
fprintf(1,'=[%6.3f,%6.3f] para %6.0f amostras\n', linf(N),lsup(N),N);