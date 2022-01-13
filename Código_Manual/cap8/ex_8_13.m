m1=418;m2=402;n1=40;n2=50;s1=26;s2=22;
prob=0.95;
talfa2=tinv(1-(1-prob)/2,n1+n2-2);
s21=26^2;s22=22^2;
s2=((n1-1)*s21+(n2-1)*s22)/(n1+n2-2);s=sqrt(s2);
talfa2=tinv(1-(1-prob)/2,n1+n2-2);
del=talfa2*s*sqrt(1/n1+1/n2)
linf=m1-m2-del;lsup=m1-m2+del;
fprintf(1,'Int%2.0f%% diferença das médias=[%4.2f,%4.2f]\n',prob*100,linf,lsup);
