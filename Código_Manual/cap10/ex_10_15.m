% estados= {sem erros, 1 erro, 2 ou mais erros}
T=[ 0.9   0.5  0.5
    0.09  0.4  0.4
    0.01  0.1  0.1];
v=[0 0 1]';
% probabilidade de erro no quarto pacote
v4= T^(4-1)*v
    % v4 =
    %    0.7800
    %    0.1830
    %    0.0370
% determinação iterativa da prob. estacionária
v_final= v;
dif= 1;
while dif > 0.001
    v_ant= v_final;
    v_final= T*v_final;
    dif= max(v_final-v_ant);
end
v_final
    % v_final =
    %    0.8328
    %    0.1421
    %    0.0251
fprintf(1,'Probabilidade com correção de erros=%6.4f\n',...
    v_final(3))
fprintf(1,'Probabilidade sem correção de erros=%6.4f\n',...
    v_final(2)+v_final(3))

    % Probabilidade com correção de erros=0.0251
    % Probabilidade sem correção de erros=0.1672