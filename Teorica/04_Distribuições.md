# Distribuições

As **fmp** e **fdp** (no caso contínuo), podem assumir as mais **variadas formas**

Distribuições mais comuns:

- **Discretas**
  - [*Bernoulli*](#bernoulli)
  - [*Binomial*](#binomial)
  - [*Poisson*](#poisson)
  - [*Geométrica*](#geométrica) 

- **Contínuas**
  - [*Uniforme*](#uniforme)
  - [*Normal*](#normal)
  - [*Exponencial*](#exponencial)
 
## Bernoulli

Diretamente relacionada com as **experiências de Bernoulli**

Seja **A** um acontecimento relacionado com o **resultado** de uma **experiência aleatória**

A **variável de Bernoulli** define-se como

**I**_A(w) = w 𝜖 A ? 1 : 0	

### Exemplo
S_i = {0,1}
p = Pr(A)

p_i(1) = p
p_i(0) = 1-p

E[I] = 1 * p + 0 * (1-p) = p -> E^2[I] = p^2

var(I) = **E[I^2] - E^2[I]** = (1^2 * p) - p^2 = p^2 - p = **p * (1-p)**

## Binomial

Diretamente relacionada com a **Lei Binomial**

Seja **X** o **número de vezes** que um acontecimento **A** ocorre em **n** experiências de Bernoulli
- X representa o número de **sucessos em n** experiências

**X = SUM_j=1 to n (I_j)**

**p_x(k)** = Pr(X=k) = **(n over k) * p^k * (1-p)^(n-k)**

F_x(x) = SUM_k=0 to x (p_x(k))

### Média e Variância

Fácil derivar, temos **n variáveis de Bernoulli** independentes, designadas por **I_i**

- **E[X]** = E[SUM I_i] = SUM E[I_i] = p + p + p + p + ... = **n * p**

- **var(X)** = var(SUM I_i) = SUM var(I_i) = ... = **n * p * (1-p)**

### Exemplo

Num conjunto de programas a **probabilidade** de haver **pelo menos um erro** ao analisar um **conjunto de 1000 linhas** de código é **p**

Se o total de linhas for **N * 1000** e dividirmos em **blocos de 1000** linhas, a probabilidade de **k** blocos terem erros é dada pela **distribuição Binomial**

Se em **1000** linhas a probabilidade é **p**, em **100** a probabilidade será de **p / 10**

Assumimos então:
- blocos de **100** linhas --> **limite so sumatório**
- **1000** blocos --> **n = 1000**
- p = 0.098

Assim:
- **p_x(k)** = Pr(X=k) = **(n over k) * p^k * (1-p)^(n-k)**

passa a:

- **P = F_x(100) = SUM_k=0 to 100 ( (10000 over k) * 0.098^k * (0.902)^(1000-k) )**

## Geométrica

Seja **X** o **número de vezes** que é necessário **repetir** uma **experiência de Bernoulli** até obter um **sucesso**

- p_x(k) = **p**(1-p)^(k-1)

*Porque teremos k-1 insucessos e de pois sucesso* 


### Média e Variância

- **E[X] = 1 / p**
  - SUM_i=1 to inf (i * p(1-p)^(i-1))

- **var(X) = (1-p)/(p^2)**


## Poisson

Foca-se apenas no número de ocorrências (discreto) num intervalo de contínuo

Esta distribuição **não tem número de experiências (n)** com na Binomial
  - As ocorrências são independentes entre si

Problemas de distribuição Binomial em que **n é grande** e o **p é pequeno**, ou seja, **eventos raros**, são bons candidatos á distribuição de Poisson
  - Se **n > 20** e **n * p <= 7** --> **Poisson**

Considerando uma variável binomial, **n cresce e p decresce** de forma a **n * p --> 𝜆**

- **p ~= 𝜆 / n** logo **1 - p ~= 1 - 𝜆 / n**

- **p_x(k) = (𝜆^k / k!) * e^(-𝜆)**

### Média e Variância

- **E[X] = 𝜆**

- **var(X) = 𝜆**

### Binomial --> Poisson

1. Calcular **média** da Binomial **µ = n * p**

2. Como µ é o **valor esperado (E[X])** da Binomial, transforma-se em **𝜆** de Poisson

3. Usar fórmula de Poisson
  - **p_x(k) = (𝜆^k / k!) * e^(-𝜆)**
  

### Exemplo

Clientes entram no banco a uma média de **3.2** a cada **4 minutos** durante um dia da semana. Qual a probabilidade de  haver **mais de 7** clientes num intervalo de **4 minutos** durante um dia á tarde

Resolvendo:

**X** = número de clientes

Prentendemos **P("X > 7 clientes / 4 minutos")**

**𝜆 = 3.2**

A solução requer que que calculemos a probabilidade para todos os **k > 7**. Ou então calculamos o **complemento da probabilidade** de **k <= 7**

Resulta que: SUM_k=0 to 7 ( 3.2^k / k! ) * e^(-3.2) = **0.0168**

*k --> valores possívies para X*

## Uniforme

- **F_X(x) = x > b ? 1 : (x >= a ? (x-a)/(b-a) : 0 )**

- **E[X] = (a + b) / 2**

- **var(X) = ( b -2 )^2 / 12**

### rand() em Matlab

Função gera números em **distribuição uniforme** com *a = 0* e *b = 1*

Para obter **U(a,b)**:
- a + rand() * (b - a)

## Normal
*ou Gaussiana*

Uma variável aleatória diz-se **normal** (ou gaussiana) se:
- **f_X(x) = 1 / (sqr(2 * 𝜋) * 𝜎)**

Podemos usat a notação **N(m, 𝜎^2)**
- **m** --> **média**
- **𝜎** --> **desvio padrão**

**Função de distribuição acumulada**
- F_X(x) = (1 / (sqr(2 * 𝜋) * 𝜎)) * Integral_-inf to +inf ( e^(- (t-m)^2 / (2 * 𝜎^2) ) dt )

- **E[X] = m** (por vezes é usado **μ** para representar a média)
- **var(X) = 𝜎^2**

### Gaussiana normalizada

Com infinitas combinações de **m** e **𝜎** podem gerar-se infinitas curvas

A **Gaussiana normalizada (N(0,1))** permite transforma-las em uma só curva

A fórmula de conversão é:
- Z = (x - m) / 𝜎

*Ou seja, subtrair a média e dividir pelo desvio padrão*

**Função densidade de probabilidade**:
- **𝜙(𝑥) = ( 1 / sqr(2 * 𝜋)) * e^(-x^2 / 2)**

**Função de distribuição acumulada**:
- **Φ(x) = (1 / sqr(2 * 𝜋)) * Integral_-inf to x (e^(t^2 / -2) dt)**

**Função distribuição acumulada**:

**N(m,𝜎^2)** também pode ser expressa em termo de **Φ(x)**
- **F_X(x) = Φ((x - m) / 𝜎)**

### Distribuição Normal e a Binomial

Função **massa de probabilidade** da Binomial, com **m = n * p** e **𝜎^2 = n * p * (1-p)**, em que **m seja muito pequeno e n elevado**, pode aproximar-se por:
- **(1 / sqr(2 * 𝜋) * 𝜎) * e^(-(k - m)^2/(2 * 𝜎^2))**

Ou seja a **distribuição normal**
- *Com m = n * p e variância = n * p * (1-p)**

## Exponencial

É **não negativa**

Relacionada com a distribuição de **Poisson**

- **f_X(x) = x >= 0 ? (𝜆 * e^(-𝜆 * x)) : 0**

- **F_X(x) = x >= 0 ? (1 - e^(-𝜆 * x)) : 0**

- **E[X] = 1 / 𝜆**

- **var(X) = 1 / 𝜆^2**

### Exemplo

A vida útil, em milhares de horas, de um componente de um robô é uma variável aleatória com distribuição exponencial de valor médio 10 (milhares de horas)

Qual a probabilidade de um desses componentesselecionado ao acaso durar menos de 4000 horas?

Resolvendo:

**𝜆** = 1 / 10 = **0.1**

**P[X < 4]** = Integral_0 to 4 ( 0.1 * e^(-0.1 * x) dx) = F_X(4) = **0.33**
