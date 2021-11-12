# Variáveis aleatórias multidimensionais

Dois tipos de casos:
- Experiência aleatória produz várias saídas
- Repetições da experiência aleatória (com uma única saída)

## Vector aleatório

É uma função que atribui a um vetor de números reais a todos os resultados ζ em S, o espaçõ de amostragem da experiências aleatórias.

Exemplo:

X = (H W A):

- H(ζ) = altura dos estudante ζ em metros
- W(ζ) = peso do estudante ζ em kg
- A(ζ) = idade do estudante

## Caracterização

São utilizadas **funções de distribuição conjuntas**

Tais como:
- **Função massa de probabilidade conjunta**
- **Função de distribuição cumulativa conjunta**
- **Função de densidade de probabilidade conjunta**

### Função massa de probabilidade conjunta

Duas variáveis **discretas** *X* e *Y*:
- p_X,Y(i,j) = **P(X = i ∧ Y = j)**

Exemplo:
```
X = 1º dado
Y = 2º dado
p_X,Y(1,1) = p_X,Y(1,2) = ... = p_X,Y(6,6) = 1/36
```


A expressão generaliza para **mais de 2 variáveis**

- p_X1,X2,...Xn(x1, x2, ..., xn) = P(X1 = x1, X2 = x2,..., Xn = xn)

- Umafunção em R^n, não negativa

SUM_x1,x2,...,xn (p_x1,x2,...,xn * (x1, x2, ..., xn)) = 1

### Função de distribuição cumulativa conjunta

Para duas variáveis X e Y:
- **F_X,Y(x,y) = P(X <= x ∧ Y <=y)**

*A mesma lógica é aplicada a n variáveis*

		Continua no slide 228