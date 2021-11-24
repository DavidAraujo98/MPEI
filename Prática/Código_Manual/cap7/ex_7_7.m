% A variável X será uma variável gaussiana com média 20 e variância 13 e serão geradas 10^5 amostras.
n=100000;m=20;s=sqrt(13)
% efetuar 100 realizações e tomar a média dos resultados
for i=1:100
    x=randn(1,n)*s+m;
    x1=round(x);
    mx(i)=mean(x);mx1(i)=mean(x1);
    vx(i)=var(x);vx1(i)=var(x1);
end
VarX=mean(vx);VarX1=mean(vx1);
EX=mean(mx);EX1=mean(mx1);
difm= EX1-EX;difv=VarX1-VarX;
fprintf(1,'E[X]=%7.4f, E[X1]=%7.4f\n',EX,EX1);
fprintf(1,'var[X]=%7.4f, var[X1]=%7.4f\n',VarX,VarX1);
fprintf(1,'diferença das médias=%7.4f\n',difm);
fprintf(1,'diferença das variâncias=%7.4f\n',difv)
