telef=[911234567,921234567, 911234568]
M=  137;   % exemplo de primo
nd= 9;     % número de digitos

R=fix(floor(rand(4,nd)*M)); 

for i=1:length(telef)
    %  converter núm telefone em vetor
    x=num2str(telef(i))'-'0';
    
    %  h(x)= R x  mod M
    hx=mod(R * x,M)
end
