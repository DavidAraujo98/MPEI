fun = @probabilidade;

x0 = [randi(10),randi(10)];
x = fsolve(fun,x0);

r=fix(round(x(1)))
b=fix(round(x(2)))

%% --------------------------
function F = probabilidade(x)

r=x(1);
b=x(2);
 
F(1)= 1-(1-0.6^r)^b - 0.01; 
F(2)= 1-(1-0.9^r)^b - 0.99; 
