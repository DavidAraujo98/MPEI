n=200;s=1;
while s>0.95
n=n+1;olds=s;
s=sum(binopdf(0:200,n,0.97));
end
fprintf(1,'No. de bilhetes vendidos %5.0f',n-1)
fprintf(1,' para uma probabilidade de %5.3f\n',olds)