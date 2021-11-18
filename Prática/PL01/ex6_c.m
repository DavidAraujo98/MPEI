res=zeros(5);
for i = 1:5
        res(i) = cointoss(0.3, 5, i, 1e5);
end
histogram(res);