m1 = 1000;
m2 = 100000;
E = 1e5;
x=1:10:100;

y1=zeros(1,10);
for n = 10:10:100
    mx = randi(m1,n,E);
    dif = zeros(1,E);
    for ncol=1: E
        col = mx(:,ncol); 
        dif(ncol)=length(unique(col))==n;
    end
    y1(n)= sum(dif)/E;
end
y1 = y1(10:10:end);

y2=zeros(1,10);
for n = 10:10:100
    mx = randi(m2,n,E);
    dif = zeros(1,E);
    for ncol=1: E
        col = mx(:,ncol); 
        dif(ncol)=length(unique(col))==n;
    end
    y2(n)= sum(dif)/E;
end
y2 = y2(10:10:end);


subplot(1,2,1);
plot(x,y1);

subplot(1,2,2);
plot(x,y2);