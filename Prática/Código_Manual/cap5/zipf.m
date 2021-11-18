% Distribuição das palavras de um livro em Português
function [palavras, ocorrencias, mapa]= zipf (ficheiro)

%%  ler palavras do ficheiro
fileID=fopen(ficheiro)

% não considerar linhas iniciais
textscan(fileID,'%s',10,'delimiter','\n');   

% criar Mapa com chave=palavra  valor=contagem
mapa= containers.Map();

while (~feof(fileID))
    p = textscan(fileID,'%s',1,'delimiter','.,;?!_-\t \n');   
    palavra= lower(char(p{1})); % tudo em  minusculas
    if (length(palavra) < 1)   continue;  end
    
    % se existir  incrementar contagem
    if (isKey(mapa, palavra))
        mapa(palavra)=mapa(palavra)+1;
    % se não existir na lista de palavras adiciona
    else     
        mapa(palavra)=1;
    end    
end

% ordenar 
palavras=mapa.keys();
ocorrencias=cell2mat(mapa.values());
[numOc,i]=sort(ocorrencias,'descend');

% fazer gráfico
ordem=1:length(palavras);  % eixo dos xx é o rank
loglog(ordem,numOc,'o:'); title('Ilustração da lei de Zipf (texto em Português)');
xlabel('Ordem'); ylabel('Num. de Ocorrências');

% adicionar algumas palavras da lista (1ª, 2ª ...
ranks=[1 2  5 10 20 50 100  500 1000];
for r=ranks
    text(r,numOc(r),[' (' num2str(r) ') ' palavras{i(r)}],'VerticalAlignment','bottom');
end


