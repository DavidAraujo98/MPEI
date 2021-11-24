function fmpLetras (ficheiros)
% Calcula a função massa de probabilidades das letra
%       (não considera diacríticos)
% Entrada: lista de nomes de ficheiros de texto (cellarray)  
% Exemplo: ficheiros={'pg21209.txt','pg26017.txt'}

%% letras a considerar
minusc='abcdefghijklmnopqrstuvwxyz'; 
maiusc='ABCDEFGHIJKLMNOPQRSTUVWXYZ'; 
 
%% inicializar total de letras
totalLetras=0;

%%  vectores para contagem de minusculas, maiusculas
contadorMinusc=zeros(1,length(minusc));
contadorMaiusc=zeros(1,length(maiusc));

%% processar todos os ficheiros...
for fich=1:length(ficheiros)
    fid=fopen(ficheiros{fich});
    while 1
        linha=fgetl(fid);
        if ~ischar(linha), break, end
        if length(linha)>0 linha=[linha sprintf('\n')]; end
    
        totalLetras=totalLetras+ length(linha);
        for k=1:length(minusc)
            resul=find(linha==minusc(k));
            contadorMinusc(k)=contadorMinusc(k)+length(resul);
        end
        for k=1:length(maiusc)
            resul=find(linha==maiusc(k));
            contadorMaiusc(k)=contadorMaiusc(k)+length(resul);
        end  
    end
    fclose(fid);
end

%% Calcular a probabilidade   e fazer gráfico
figure(1); subplot(211);
bar(1:length(contadorMinusc),contadorMinusc/totalLetras, 'FaceColor','none')
title('Letras Minúsculas'); xlabel('Letras'); ylabel('Probabibilidades');
set(gca,'XTick',1:length(contadorMinusc))
set(gca,'XTickLabel',cellstr(minusc'))
axis([0,length(minusc)+1, 0,0.1]);
subplot(212)
bar(1:length(contadorMaiusc),contadorMaiusc/totalLetras, 'FaceColor','none')
title('Letras Maiúsculas'); xlabel('Letras'); ylabel('Probabibilidades');
set(gca,'XTick',1:length(contadorMaiusc))
set(gca,'XTickLabel',cellstr(maiusc'))
axis([0,length(minusc)+1, 0,0.1/10]);
