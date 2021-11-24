rng default % para poder replicar 
n=120;
m1=10;m2=m1*1.2;s1=m1/4;s2=m2/4;
N1=round(normrnd(m1,s1,1,n));
N1(find(N1>20))=20;N1(find(N1<0))=0;
N2=round(normrnd(m2,s2,1,n));
N2(find(N2>20))=20;N2(find(N2<0))=0;
% estimação das probabilidades pelo histograma
h1=hist(N1,0:20)/120;h2=hist(N2,0:20)/120;
% probabilidade conjunta
p=h1'*h2;
% gráfico da probabilidade conjunta
[x,y]=meshgrid(0:20,0:20);
figure
stem3(x,y,p,'.k','LineWidth',2)
xlabel('turma 2'),ylabel('turma 1')
axis([min(N1) 20 min(N2) 20 0 max(max(p))])
view(-30,60)
% correlação
cova=(N1-mean(N1))*(N2-mean(N2))'/n^2;
ro=cova/sqrt(var(N1)*var(N2));
fprintf(1,'Coeficiente de correlação de N1 e N2=%7.4f\n',ro);
