% matriz de transição
T=[1/3 1/3 1/3;1/4 1/2 1/4;0 1/2 1/2]';
% T-I aumentado com a 3a equação
M=[T-eye(size(T));ones(1,length(T))];
% 2º membro do sistema
x=[0 0 0 1]';
u=M\x;
for i=1:length(T)
    fprintf(1,'pi%1i=%6.4f\n',i,u(i));
end
