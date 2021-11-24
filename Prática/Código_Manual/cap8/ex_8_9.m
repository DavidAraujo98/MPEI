% velocidades de download medidas
v1=[87.97,88.31,88.39,96.01,90.80,83.55,87.74,88.68,87.29,88.31]; 
v2=[100.57,93.78,95.24,87.47,95.69,99.54,96.07];
n1=length(v1);n2=length(v2);
mv1=mean(v1);mv2=mean(v2);
s21=var(v1);s22=var(v2);
s2=((n1-1)*s21+(n2-1)*s22)/(n1+n2-2);s=sqrt(s2);
prob=0.99;         
talfa2=tinv(1-(1-prob)/2,n1+n2-2);
del=talfa2*s*sqrt(1/n1+1/n2);
linf=mv1-mv2-del;lsup=mv1-mv2+del;
fprintf(1,'vel.download do site 1=%6.2f\n',mv1)
fprintf(1,'vel.download do site 2=%6.2f\n',mv2)
fprintf(1,'Int%2.0f%% diferença das médias=[%6.2f,%6.2f]\n', prob*100,linf,lsup);