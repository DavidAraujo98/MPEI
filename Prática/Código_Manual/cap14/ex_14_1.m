% conjunto de membros
C={'abc@ua.pt', 'cdef@ua.pt', 'wert@ua.pt','fgh@ua.pt'};
% vetores relativos às funções de dispersão
h1=[54,90,24]; h2=[97,5,38];

% inicializar B com zeros
B=zeros(1,11);
% adicionar todos os elementos de C ao filtro
for i=1:length(C)
    e=C{i};             % obter elemento
    x=double(e(1:3));   % códigos ASCII 
    % colocar a 1 posições definidas por h1 e h2
    B(mod(h1*x',11)+1)=1; 
    B(mod(h2*x',11)+1)=1;
end
disp(B);    
