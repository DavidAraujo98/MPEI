clear
% probabilidade de soma de dois dados ser 10
% gerar N séries de M lançamentos
rng default %para ser reprodutível
N=20;M=1000;
a=randi(12,N,M);
y=zeros(size(a));
y(a==10)=1;
% vetor com as frequências relativas/série para soma=10
x=sum(y,2)/M;mx=mean(x);vx=var(x);
prob=0.95;
% determinação do intervalo de confiança
[linf,lsup]=intconfmedia2(mx,vx,prob,N);
fprintf(1,'Int%2.0f%% P[soma=10]=[%6.4f,%6.4f]\n',prob*100,linf,lsup);