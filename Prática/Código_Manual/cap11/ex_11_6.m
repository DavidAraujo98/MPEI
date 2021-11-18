H= [1/2 1/2 0; 1/2 0 0; 0 1/2 1];
N= length(H);
d=0.8; % fator de amortecimento

A=d*H+ (1-d) * ones(N)/N;

r=ones(N,1)/N;
for i=1:100
    r=A*r
end

format rat  % para obter em forma de fração
disp(r)