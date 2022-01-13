Exp = 1e5;
throw = 2;

mx = randi(6, throw, Exp);

A = sum(sum(mx)==9)/Exp;
B = sum(rem(mx(2,:),2)==0)/Exp;
C = sum(sum(mx==5)>=1)/Exp;
D = sum(sum(mx~=1)>1)/Exp;

l1 = sum(mx)==9;
l2 = rem(mx(2,:),2)==0;
temp = [l1;l2];
AB = sum(sum(temp)==2)/Exp;

l1 = sum(mx==5)>=1;
l2 = sum(mx~=1)>1;
CD = sum(sum(temp)==2)/Exp;

% b) Teoricamente P(A^B) = P(A) * P(B)
disp(AB);
disp(A*B);

% c) Teoricamente P(C^D) = P(C) * P(D)
disp(CD);
disp(C*D);