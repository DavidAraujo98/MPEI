n=501;s=0;
while s<0.99
    s=sum(poisspdf(0:n-500,0.001*n));
    n=n+1;
end
fprintf(1,'No. de chips%5.0f',n-1)
fprintf(1,'  para uma probabilidade de %5.3f\n',s)