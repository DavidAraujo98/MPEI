% far-se-ão m séries de n experiências
% vai-se fixar n=100 e inicia-se com uma série de 10 experiências
p=0.95;n=100;m=10;
for i=1:m
    x=randi(6,1,n)+randi(6,1,n)+randi(6,1,n);
    ps7(i)=sum(x==7)/n;
end
mn=mean(ps7);vn=std(ps7);
alfa=tinv(p,m-1);
delta=alfa*vn/sqrt(m);
% determinação da amplitude relativa do intervalo
ampl=2*delta/mn;
while ampl>0.01
    m=m+1;
    x=randi(6,1,n)+randi(6,1,n)+randi(6,1,n);
    ps7(m)=sum(x==7)/n;
    mn=mean(ps7);vn=std(ps7);
    alfa=tinv(p,m-1);
    delta=alfa*vn/sqrt(m);
    ampl=2*delta/mn;
end
% valores finais
nt=m*n;
linf=mn-delta;lsup=mn+delta;
% mostrar resultados
fprintf(1,'Valor teórico de P[soma=7]=%8.5f\n',15/6^3)
fprintf(1,'Valor estimado de P[soma=7]=%8.5f\n',mn)
fprintf(1,'Foram feitas %4.0f séries de %4.0f experiências\n',m,n)
fprintf(1,'Nº total de experiências=%5.0f\n',nt)
fprintf(1,'Int. confiança a %4.2f=[%6.4f,%6.4f]\n', p,linf,lsup)
fprintf(1,'Amplitude do intervalo=%8.5f\n',lsup-linf)