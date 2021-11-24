x=0:2;y=0:2;
pxy=[0.3 0.2 0;0.1 0.15 0.05;0 0.1 0.1]
% médias
px=sum(pxy');py=sum(pxy);
EX=sum(x.*px);EY=sum(y.*py);
% variâncias
varx=sum((x.^2).*px);vary=sum((y.^2).*py);
% Correlação, covariância
EXY=sum(sum((x'*y).*pxy))
covxy=EXY-EX*EY
% coeficiente de correlação
roxy=covxy/sqrt(varx*vary)
% apresentação de resultados
fprintf(1,'Probablidades marginais:\n')
fprintf(1,'pX=(%6.3f,%6.3f,%6.3f)\n',px)
fprintf(1,'pY=(%6.3f,%6.3f,%6.3f)\n',py)
fprintf(1,'Médias: E[X]=%6.3f E[Y]=%6.3f\n',EX,EY)
fprintf(1,'Variâncias: Var(X)=%6.3f Var(Y)=%6.3f\n',varx,vary)
fprintf(1,'Correlação(X,Y)=%6.3f Covariância(X,Y)=%6.3f\n',EXY,covxy)
fprintf(1,'Coeficiente de correlação=%6.3f\n',roxy)