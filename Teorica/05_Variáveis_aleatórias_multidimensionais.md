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

#### Exemplo 1

**Y_1** = número de temporais em Junho (0 a 2)

**Y_2** = número de temporais em Julho (0 a 2)

- **Tabela com probabilidades**

|		| Julho	|(y_2)	|		|		|	
|:-:	|	-	|	-	|	-	|	-	|
|		|	-	|	0	|	1	|	2	|
|Junho	|0		|0.05	|0.1	|0.15	|
|(y_1)	|1		|0.1	|0.15	|0.20	|
|		|2		|0.15	|0.05	|0.05	|

- p_y1,y2(0,2) = 0.15
- p_y1,y2(2,1) = 0.05
- ...

### Distribuição de cada uma das variáveis

A distribuição de cada uma das variáveis pode ser obtida da distribuição conjunta

Por exemplo, no caso com duas variáveis X e Y:
- F_X(a) = P(X <= a) = P(X <= a, Y <= inf) = F_X,Y(a, inf)

De forma similar:
- F_Y(b) = P(Y <= b) = F_X,Y(inf, b)

### Funções de probabilidade marginais

Para obter a **função de massa de probabilidade** as fórmuças para o **caso discreto** são:
- **p_X(x) = SUM_y ( p_X,Y(x,y) )**
- **p_Y(y) = SUM_x ( p_X,Y(x,y) )**

No caso de **duas variáveis (X e Y)**, para obter a **fmp** somamos as **linhas** apropriadas da tabela representando a função de **probabilidade conjunta**

De forma similar obtém-se **Y** somando as **colunas**

#### Exemplo

|		| Julho	|(y_2)	|		|		|		|	
|:-:	|	-	|	-	|	-	|	-	|	-	|	
|		|	-	|	0	|	1	|	2	|**p(y_1)**	|
|Junho	|0		|0.05	|0.1	|0.15	|**0.30**|
|(y_1)	|1		|0.1	|0.15	|0.20	|**0.45**|
|		|2		|0.15	|0.05	|0.05	|**0.25**|
|		|**p(y_2)**	|0.30	|0.30	|0.40	|**1.00**|

### Independência

**X** e **Y** são independentes se, para qualquer a,b é verificável:
- **P(X <= a, Y <= b) = P(X <= a) * P(Y <= b)**

Ou seja, se **E_a = {X <= a}** e **E_b = {Y <= b}** são independentes, **também as variáveis** serão

Em termos de **função de distribuição acumulada conjunta**:
- X e Y são independentes **sse**: 
  - **F_X,Y(a,b) = F_X(a) * F_Y(b)**

*qualquer que sejam a e b*

Também, no caso discreto, X e Y são independentes **sse**:
- **p(x,y) = p_X(x) * p_Y(y)**

E no caso contínuo:
- **f_XY(x,y) = f_X(x) * f_Y(y)**