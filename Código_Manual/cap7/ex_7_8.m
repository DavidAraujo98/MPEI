n=100000;mx=10;my=15;s=sqrt(13);
x=normrnd(mx,s,1,n);y=normrnd(my,s,1,n);
x1=round(x);y1=round(y);z=x1+y1;
mx=mean(x);my=mean(y);varx=var(x);vary=var(y);
mx1=mean(x1);my1=mean(y1);varx1=var(x1); vary1=var(y1);
mz=mean(z);varz=var(z);
fprintf(1,'E[X]=%3.1f, E[Y]=%3.f\n',mx,my);
fprintf(1,'E[X1]=%3.1f, E[Y1]=%3.1f\n',mx1,my1);
fprintf(1,'Var(X)=%7.4f, Var(Y)=%7.4f\n',varx,vary);
fprintf(1,'Var(X1)=%7.4f, Var(Y1)=%7.4f\n',varx1,vary1);
fprintf(1,'E[Z]=%3.1f, Var(Z)=%7.4f\n',mz,varz)
