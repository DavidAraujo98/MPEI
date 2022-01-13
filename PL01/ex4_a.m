v=[3,20,40,100];
for y = v
   for i = 1:y
        prob = cointoss(0.5, y, i, 1e5);
        fprintf("Caras %d vezes em %d lançamentos: %1.6f", i, y, prob);
    end
end
