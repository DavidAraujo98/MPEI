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

- Exemplo
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

## Geométrica

		continue in slide 174