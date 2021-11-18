r=1;s=0; 
while s<0.95
 s=1-sum(nbinpdf(0:100,r,0.05));
 r=r+1;
end
fprintf(1,'São necessárias%3.0f',r-2)
fprintf(1,' peças para uma probabilidade de %5.3f\n',s)
