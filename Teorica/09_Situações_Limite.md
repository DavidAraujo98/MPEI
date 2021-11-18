# Situações Limite

Como saber o que acontece quando **n tende para infinito** ao valor esperado e variância da Média e *n* medições

## Index

- [Desigualdades de Markov e Chebyshev](#markov-e-chebyshev)
- [Lei dos Grandes Números](#lei-dos-grandes-números)
- [Teorema do Limite Central](#teorema-do-limite-central)

## Markov e Chebyshev

Permitem estabelecer **facilmente majorantes** para probabilidades de certas classes de acontecimentos
- partindo apenas do conhecimento da **média** e **variância** de uma variável aleatória

### Desigualdade de Markov

X é uma v.a. **não negativa**

- **P(X >= a) <= E[X] / a , ∀a > 0**

Esta desigualdade dá um **limite superior** para a probabilidade de a função *X* ser maior ou igual a um determinado valor

**Demonstração**

E[X] = ?

= ~~Integral_0 to a (x * f_x(x)) dx~~ + Integral_a to +inf (x * f_x(x)) dx >= 

=> Integral_a to +inf (x * f_x(x)) dx >= Integral_a to +inf (a * f_x(x)) dx >= a * P[X >= a]

Logo: **P[X >= a] <= E[X] / a**

#### Exemplo

Média de alturas: 1,65m

Qual o **limite superior** de probabilidade de um indivíduo ultrapassar os 2 metros

- P(X >= 2) <= 1,65 / 2 = 0,825

### Desigualdade de Chebyshev

- **P(|X - E[X]| >= a) <= Var(X) / a^2**

Ou em alternativa

- **P(|X - E[X]| < a) >= 1 - Var(X) / a^2**

Se **expressarmos a em função do desvio padrão**, fazendo **a = h𝜎**, teremos:
- P(|X - E[X]| >= h𝜎) <= 𝜎^2 / (h𝜎)^2 = 1 / h^2

Qual a **probabilidade da média das amostras se aproximar do valor médio** (a menos de 𝜖) ?
- P(|Mn − E[Mn]| < 𝜖)

Usando Chebyshev temos:

P(|Mn - E[Mn]| >= 𝜖) <= Var(Mn) / 𝜖^2

= P(|Mn - E[Mn]| >= 𝜖) <= (𝜎^2 / n) / 𝜖^2

= P(|Mn - E[Mn]| < 𝜖) >= 1 - 𝜎^2 / (𝜖^2 * n)

passando ao **limite**

lim_n->inf P(|Mn - E[Mn]| < 𝜖) = 1

Chamado de **Lei Fraca dos Grandes Números**

## Lei dos Grandes Números

**Lei Fraca dos Grandes Números**: para um valor de *n* suficientemente elevado a média das amostras estará muito próxima do valor esperado

**Lei forte**: garante que é certo que o limite para que tende a média (das amostras) é o valor esperado

### Definição frequencista

Seja *Ij* uma variável aleatória indicadora da ocorrência do evento A na experiência de ordem *j*
- [1 significa que A ocorreu]

O número total de ocorrências de *A* nas *n* experiências será:
- **Nn= I1 + I2 + ... + In**

**Frequência relativa** de *A*
- f_A(n) = (I1 + ... + In) / n

f_A é a média das amostras das variáveis aleatórias *Ii*

Então
- lim_n->inf P(|f_A(n) - p(A)| < 𝜖) = 1

e

- P[lim_n->inf f_A(n) = p(A)] = 1

Permite dizer que a **frequência relativa é uma boa estimativa da probabilidade**

## Teorema do Limite Central

Teorema: **demonstra-se que a soma de variáveis i.i.d. tende para uma distribuição normal quando o número de variáveis é grande**

É a razão da **importância da distribuição Normal**

### Aplicando à média Mn

Mn = (1/n) * SUM_i=1 to n (Xi)

Pelo TLC:
- Mn ~ N(𝜇,𝜎2/𝑛) quando n -> +inf

A distribuição da média de n variáveis i.i.d. **tende** para uma **distribuição normal** com parâmetros *𝜇* e *𝜎2/𝑛*