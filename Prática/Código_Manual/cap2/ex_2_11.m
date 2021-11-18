N=1000000;
x=2*(rand(1,N)-0.5);y=2*(rand(1,N)-0.5);
z=sqrt(x.^2+y.^2);
pia=4*sum(z<=1)/N;
fprintf(1,'Pi=%5.4f\n',pia)