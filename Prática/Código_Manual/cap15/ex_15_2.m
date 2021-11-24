texto1='When nine hundred years old you reach, 
        look as good you will not.'
texto2='You will not look as good when nine 
        hundred years old';

% conjunto de palavras ÚNICAS dos 2 textos
C1=unique(strsplit(lower(texto1)));
C2=unique(strsplit(lower(texto2)));

% similaridade de Jaccard
simJ=length(intersect(C1,C2))/ length(union(C1,C2))
