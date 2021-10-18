r = (1:6);      % linha de valores de 1 a 6
c = r(:);       % transposição da linha para uma coluna
s = r+c;        % soma da linha e coluna resulta na matrix de todos os valores possiveis

total=length(unique(s));

disp(total);