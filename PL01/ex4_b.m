res = zeros(20);
for i = 1:20
        res(i) = cointoss(0.5, 20, i, 1e5);
end
stem(res);