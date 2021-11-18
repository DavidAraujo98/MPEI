n=51;s=0;
while s<0.99
    s=sum(binopdf(50:n,n,.999));
    n=n+1;
end
fprintf(1,'No. de chips%5.0f',n-1)
fprintf(1,'  para uma probabilidade de %5.3f\n',s)
