s=0; n=4;
while s<0.05
    s=sum(binopdf((4:n),n,0.1));
    n=n+1;
end
fprintf(1,'P[k>3]=%7.4f para amostra de%4.0f unidades\n',s,n-1)
