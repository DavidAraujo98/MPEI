N=250000;
x=2*(rand(1,N)-0.5);y=1.6*rand(1,N);
int=sum(y<=exp(-x).*cos(x))/N*3.2;
fprintf(1,'O valor do integral é %5.4f\n',int)
