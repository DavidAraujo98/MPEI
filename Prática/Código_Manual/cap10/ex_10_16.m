% Angola (A), Brasil (B), Chile (C) e Dinamarca (D)
A=1; B=2; C=3; D=4;
T=zeros(4);
% Angola envia 10% do total da tonelagem existente em cada dia 1 para o Brasil,5% para o Chile e 1% para a Dinamarca;
T(B, A)=0.1;   T(C, A)=0.05; T(D, A)=0.01;
T(A,A)=1-sum(T(:,A));
% O Brasil expede 10 % para cada um dos outros países (ou seja, no total 30%);
T(A, B)=0.1;   T(C, B)=0.1; T(D, B)=0.1;
T(B,B)=1-sum(T(:,B));
% Do chile seguem para a Dinamarca 20%;
T(D, C)=0.2;   
T(C,C)=1-sum(T(:,C));
% A Dinamarca envia 50% para Angola,10% para o Brasil e 10% para a Chile. 
T(A, D)=0.5; T(B, D)=0.1;  T(C, D)=0.1;
T(D,D)=1-sum(T(:,D));
T

    % T =

    %    0.8400    0.1000         0    0.5000
    %    0.1000    0.7000         0    0.1000
    %    0.0500    0.1000    0.8000    0.1000
    %    0.0100    0.1000    0.2000    0.3000
v=[1 2 10 5]'*1e6
    % v =
    %     1000000
    %     2000000
    %    10000000
    %     5000000
% ao fim de 9 meses
T^9 * v
    %    7.8406 *1.0e+06
    %    3.0928 *1.0e+06
    %    5.0301 *1.0e+06
    %    2.0365 *1.0e+06

% procura do máximo 
mes=0;   %   MES 1 = JAN 20xx
xs=v;x=xs;
while  mes <100  
    x=T*x; mes=mes+1;xs=[xs x];    
end
max(xs')
    %   1.0e+07 *
    %   0.8090    0.3337    1.0000    0.5000