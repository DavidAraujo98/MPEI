y = 365;
E = 1e4;

dif = zeros(1,100);
for i = 1:100
    mx = randi(y,i,E);
    dif1 = zeros(1,E);
    for ii = 1:E
        col = mx(:,ii);
        dif1(ii) = length(unique(col))==i;
    end
    dif(i) = sum(dif1)/E;
end

num_p = find(dif<0.5,1,'first');
disp(num_p);