# Variáveis Aleatórias

## Conceito de variável aleatória

Uma função que mapeia o espaço de amostragem na reta real é designada de **variável aleatória**

Podemos também defini-la, informalmente, como o **resultado numérico das nossas experiências (aleatórias)**

## Definição

Uma variável aleatória escalar X é um mapeamento de um espaço amostral S para reta real

### Caso contínuo

**Conjuntos de contínuos** mapeiam **segmentos de reta** reais

## Tipos de variáveis aleatórias

### Discreta

Se os valores que a variável aleatória pode assumir forem finitos
 - ou infinitos mas contáveis

### Contínua

Se os valores que pode assumir formarem um ou vários intervalos disjuntos

### Mista

Verificam os atributos dos tipos anteriores

---

## Caracterização - Parte 1

### Distribuição de probabilidades

As variáveis aleatórias são caracterizáveis pelo conjunto de valores que podem assumir e as probabilidades associadas

### Função (massa) de probabilidade

Variável aleatória discreta X é especificada por:

 - Conjunto de valores que pode assumir: Xi, i= 1,2,...
 - Probabilidade associada a cada um desses valores: Px(Xi)
   - Denominada de **função massa de probabilidade**

Px(Xi) = P(X = Xi)

### Função distribuição acumulada (discreta)

Uma **variável aleatória (discreta)** pode ser também **especificada** pelas sua função distribuição acumulada

Fx(x) = Px(X <= x) = SUMi:xi<=x(Px(Xi))

### Função distribuição acumulada (contínua)

Fx(x) = Prob(X <= x)

Fx(x) é agora contínua 

## Variáveis aleatórias contínuas

Também pode ser **especificada** pela sua **função distribuição acumulada**

Podem ser especificadas pela sua função de densidade de probabilidade fx(x)

**Obtém-se derivando a função de distribuição**

fx(x) apenas define os **valores de probabilidade** quando integrada num intervalo

fx(x) dx é a **probabilidade** da variável X **pertencer ao intervalos** (x,x+dx), sendo dx um **acréscimo infinitesimal**

---

## Caracterização - Parte 2

### Valor esperado 

Sendo X uma **variável aleatória** , o valor esperado será a **média de X**  ao repetirmos a experiênia indefinidamente

Representando por **x_i** os **m** diferentes valores que **Xi** pode assumir

**SUM_i=1 to m of (x_i * P(X = x_i))** 

O valor esperado é representado por **E[X]**

- No caso **discreto**:  E[X] = SUM(i) x_i * p( x_i ) 
- No caso **continuo**:  E[X] = Integral(-inf to +inf) x * f_x(x) dx

#### Propriedades

E[x] é um **operador linear**

Dado *a* e *c* são contantes ∈R e *X* e *Y* variáveis aleatórias:

- E[aX] = a*E[X]
- E[X+Y] = E[X] + E[Y]
- E[X+c] = E[X] + c

### Variância

Usar a diferença dos valores da variável para a média (valor esperado) e fazer a sua média
 
- **var(X) = E[ ( X - E(X) )² ]**
- **var(X) = 𝜎^2 = SUM_i([x_i - E(X)]^2) * p(x_i)**
- **var(X) = E[X²] - E²[X]**

#### Desvio padrão

Varância = **(desvio padrão)^2**

Respresentado por **𝜎**

#### Propriedades variância

Dado *X* uma variável aleatória e *c* uma constantes:

- **var(X+c) = var(X)**
- **var(cX) = c^2 * var(X)**

#### Interpretação

- **E[X]**
  - **Valor médio** de X
  - **Centro de gravidade da fmp** (caso discreto) ou **fdp**

- Desvio padrão / Variância dá uma medida de **dispersão** da variável aleatória

### Momentos de ordem *n*

- Caso discreto

m_n = E[X^n] = SUM_i ( (x_i)^n * p_x(x_i) )

- Exemplo dado equilibrado:

n = 2
p_x(x_i) = 1/6
x_i = (1:6)

E[X^2] = 1^2 * 1/6 + 2^2 * 1/6 + 3^2 * 1/6 + ... = 15,1667

- Momentos **centrados de ordem *n*** = generalização da variância

- E[ (X - E[X])^n ] = SUM_i ( x_i - E[X] )^n * p_x(x_i)

### Exemplo

- Qual o valor da variância dos valores obtidos no lançamento de um dado honesto ?

E[X^2] = 1^2 * 1/6 + 2^2 * 1/6 + 3^2 * 1/6 + ... = **15,1667**
E^2[X] = (1 * 1/6 + 2 * 1/6 + 3 * 1/6 + ...)^2 = **12,25**

var(X) = E[X^2] - E^2[X] = 15,1667 - 12,25 = **2.9167**
