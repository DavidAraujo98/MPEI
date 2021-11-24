C=1;s=0;
while s<0.95
    s=sum(poisspdf(0:C,5));
    C=C+1;
end
fprintf(1,'nº de camas C=%3.0f',C-1)
fprintf(1,' para P[X<=C]=%5.2f\n',s)