N=100000;
for i=1:5
    x=rand(1,N);y=rand(1,N);
    dist=abs(x-y);
    area=sum(dist<0.2)/N;
    fprintf(1,'área= %5.4f \n',area)
end