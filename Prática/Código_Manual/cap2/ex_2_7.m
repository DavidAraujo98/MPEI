% Simulação do lançamento de 3 dados N vezes para determinação
% da frequência relativa da soma de resultado ser igual a x1 e a x2
N=1000000;x1=9;x2=10;
x=floor(6*rand(3,N)+1);
resultado=sum(x);
somax1=sum(resultado==x1);
somax2=sum(resultado==x2);
fx1=somax1/N;
fx2=somax2/N;
fprintf(1,'P[soma=%2.0f]=%5.3f, P[soma=%2.0f]=%5.3f\n',x1,fx1,x2,fx2)
