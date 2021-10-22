n = 5;
r = 41; %Alfabeto + numeros de 0 a 10. Conjunto de 0:10 -> números de 0 a 9; 11:36 -> alfabeto (vogais sem acento); 37:41 -> vogais com acento
E = 1e6;

mx = randi(r,n,E);

%Caso a
a = mx<=10;
prob_a = sum(sum(a)==n)/E;

%Caso b
b = mx>=37;
prob_b = sum(sum(b)==n)/E;

format long

disp(prob_a);
disp(prob_b);
