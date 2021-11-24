%% a)

%   Iraque França Suiça Brasil EUA  Israel
T=[ 0.7    0.1    0     0      0    0
    0.2    0      0.3   0      0    0
    0      0.6    0.1   0      0    0
    0.1    0.3    0.4   0.1    0    0
    0      0      0.2   0.4    1    0
    0      0      0     0.5    0    1];

v=[0 1/2 1/2 0 0 0]';

Q=T(1:4,1:4);
R=T(5:end,1:4);

F=inv(eye(size(Q))-Q);

B=R*F;

fprintf(1,'Tempo médio para terminar nos EUA começando no Iraque = %.3f\n',B(1,1));
fprintf(1,'Tempo médio para terminar em Israel começando no Iraque = %.3f\n',B(2,1));

%% b) 
p5= T^5 * [1 0 0 0 0 0]';
fprintf(1,'Prob. nos EUA 5 meses depois do Iraque = %.3f\n',p5(5));

p50= T^50 * [0 0 0 1 0 0]';
fprintf(1,'Prob. em Israel 50 meses depois do Brasil = %.3f\n',p50(6));
