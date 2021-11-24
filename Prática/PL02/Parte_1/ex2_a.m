m = 100;
n = 20;
E = 1e5;

mx = randi(m,n,E);
dif = zeros(1,E);

for ncol=1: E
    col = mx(:,ncol); 
    dif(ncol)=length(unique(col))==n;
end

prob =(sum(dif)/E);

disp(prob);