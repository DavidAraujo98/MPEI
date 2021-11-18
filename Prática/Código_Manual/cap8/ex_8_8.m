prob=[0.9 0.95 0.99];n=10;
var=224^2
for i=1:3
    linf=(n-0)*var/chi2inv(1-(1-prob(i))/2,n-1);
    lsup=(n-0)*var/chi2inv((1-prob(i))/2,n-1);
    fprintf(1,'Ivar%2.0f%%=[%6.0f,%.0f]', prob(i)*100,linf,lsup);
    fprintf(1,'Isig%2.0f%%=[%3.0f,%3.0f]\n', prob(i)*100,sqrt(linf),sqrt(lsup));
end