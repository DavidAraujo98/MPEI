m1 = [200,500,1000,2000,5000,10000,20000,50000,100000];
E = 1e5;
x=1:10:100;

i=1;
y=zeros(10,10);
for m = m1
    y1=zeros(1,10);
    for n = 10:10:100
        mx = randi(m,n,E);
        dif = zeros(1,E);
        for ncol=1: E
            col = mx(:,ncol); 
            dif(ncol)=length(unique(col))==n;
        end
        y1(n)= sum(dif)/E;
    end
    y(i) = y1(10:10:end); 
    i=i+1;
end


subplot(3,3,1);
plot(x,y(1));

subplot(3,3,2);
plot(x,y(2));

subplot(3,3,3);
plot(x,y(3));

subplot(3,3,4);
plot(x,y(4));

subplot(3,3,5);
plot(x,y(5));

subplot(3,3,6);
plot(x,y(6));

subplot(3,3,7);
plot(x,y(7));

subplot(3,3,8);
plot(x,y(8));

subplot(3,3,9);
plot(x,y(9));