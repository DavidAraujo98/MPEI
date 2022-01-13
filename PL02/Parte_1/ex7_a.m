Exp = 1e5;
pA = 0.01;
pB = 0.05;
pC = 0.001;

mA = rand(20,Exp) < pA;
mB = rand(30,Exp) < pB;
mC = rand(50,Exp) < pC;

total = [mA; mB; mC];

countA = 0;
countB = 0;
countC = 0;
erros = 0;

for j = 1:Exp
    i = randi(100);
    if total(i,j) == true
        erros = erros + 1; 
        if i > 50
            countC = countC + 1;
        elseif i > 20
            countB = countB + 1;
        else 
            countA = countA + 1;
        end
    end
end

probA = countA / erros;
probB = countB / erros;
probC = countC / erros;

disp(probA);
disp(probB);
disp(probC);