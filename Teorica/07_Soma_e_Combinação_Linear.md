# Soma e Combinação Linear de Variáveis Aleatórias

## Index

- [Média](#média)
- [Variância](#variância)
- [Função de distribuição](#função-de-distribuição)
- [Combinações lineares](#combinações_lineares)

## Média

Teorema: **A média da soma de *n* variáveis é igaul à soma das médias**

## Variância

Teorema: **A variância da soma de *n* variáveis aleatórias é dada pela soma de todas as variâncias e covariâncias**

Variáveis **independentes**, Cov(X_j,X_k) = 0, para todo o j != k
- Var(S_n) = SUM_i=1 to n (Var(X_i))
  - Variância da soma **igual a soma** das variâncias

Se independentes **e identicamente distribuidas (IID)** e E[X_i] = 𝜇 e Var(X_i) = 𝜎^2 , i=1,2,...,n ; a **média** e a **variância** são
- **E[S_n] = n * 𝜇**
- **Var(S_n) = n * 𝜎^2**

## Função de distribuição

*2 variáveis aleatórias independentes: X e Y*

Z = X + Y

p_Z(z) = P(X + Y = z)

**SUM_x (P(X = x, Y = z - x))** = SUM_x (p_X(x) * p_Y(z-x)) = **p_X * p_Y(z)**

É a **convolução** discreta de p_X e p_Y

## Combinações lineares

Os resultados anteriores generalizam-se 
- **Y_n = c1 * X1 + c2 * X2 + ... + cn * Xn**
  - *c* é constante

E[Y_n] = c1 * E[X1] + ... + cn * E[Xn]

Var(Yn) = SUM_i=1 to n (ci^2 * Var(Xi)) + SUM_i SUM_j (ci * cj * Cov(Xi,Xj) )

**Se independentes** -> **Var(Yn) = SUM_i=1 to n (ci^2 * Var(Xi))**