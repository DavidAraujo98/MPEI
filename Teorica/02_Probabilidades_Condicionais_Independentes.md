# Probabilidades Condicionais Independentes

## Aleatório
 - Em termos qualitativos, "qualquer coisa" que não seja predizível com certeza absoluta
 
## Probabilidade
 - "Medida do grau de certeza associado a um resultado proveniente de um fenómeno de acaso"
 

## Experiência aleatória
 - Procedimento que deve produzir um resultado
 - Mesmo que repetido nas mesmas condições não garante um resultado idêntico
 
### Especificidades
 - Espaço de amostragem
 - Conjunto de acontecimentos (ou eventos)
 - Lei de probabilidade
 
#### Espaço de amostragem
 - Conjunto de **todos** os **resultados possíveis**
 - Resultados tem de ser  **mutuamente exclusivos** e **não divisíveis**
 - **Discreto** se for contável
 - **Contínuo** se não contável
 
Os elemento (resultados possíveis) são designados por *resultados elementares*

#### Lei da probabilidade
 - Atribui probabilidade aos vários eventos
 - **Probabilidade**:
   - número associado a um evento que indica a *verosimilhança* desse evento ocorrer
 
A probabilidade de um evento pode obter-se a partir de:
 - **Medição**
 - **Probabilidades teóricas**
 - **Modelos probabilísticos**
 - **Probabilidades empíricas**

## Abordagens
 - Teoria **clássica**
   - Probabilidades teóricas
 - **Frequencista**
   - Probabilidades empíricas
 - Teoria **matemática** 

---

## Teoria Clássica

Probabilidade é igual à fração entre o **número de casos favoráveis** pelo **número de casos possíveis**

**Regras básicas**
 - **P(A U B) = P(A) + P(B)** se P(A) e P(B) forem independentes
 - **P(A ∩ B) = P(A) x P(B)** se P(A) e P(B) forem independentes
 - **P(A U B) = P(A) + P(B) - P(A ∩ B)** se P(A) e P(B) não forem independentes
 
Regras e definição clássica **assumem** dados honestos, moedas 
honestas, ... Ou seja, assumem **equiprobabilidade** para os **eventos elementares**

---

## Abordagem Frequencista

**Repete-se** a experiência um certo **número de vezes (N)**. Seja **k** o **número de vezes** que ocorre o **caso favorável**. E calcula-se **f = k/N** em que **f** é a **frequência relativa** de ocorrer.

### Frequência relativa

Se a frequência relativa **convergir** quando N aumenta, então o limite da frequência relativa é a **probabilidade de A**

---

## Teoria Axiomática de Probabilidade

Em determinado ponto da evolução de uma teoria de pensamento matemático, torna-se imperioso ordenar sistematizar e relacionar todos os conhecimentos entretanto nela reconhecidos, isto é, proceder à sua **AXIOMATIZAÇÃO**

### Axiomática de probabilidades
 - **Axioma 1** - probabilidades são **não-negativas**
 - **Axioma 2** - normalização (S tem probabilidade 1)
 - **Axioma 3a** - Se A e B forem **mutuamente exclusivos** então **P(A U B) = P(A) + P(B)**
 - **Axioma 3b** - Se A1, A2,... forem uma **sequência infinita** de acontecimentos **mutuamente exclusivos** então **P(A1 U ... U Ak) = P(A1) + ... + P(Ak)**
 
---

## Probabilidades Condicionais
A probabilidade de ocorrência de um evento A com a informação de que o evento B ocorreu é a designada **Probabilidade Condicional** de A dado B

P(A|B) = P(AB)/P(B) se P(B) != 0

### Regra da cadeia: P(AB), P(ABC), ...

**P(AB) = P(A|B) x P(B)**

Aplicando sucessivamente temos a *regra da cadeia*

P(A1 A2 ... An) = P(A1|A2...An) x P(A2...An) = P(A1|A2...An) x P(A2|A3...An) x P(A3...An) x P(An-1|An)

### Lei da Probabilidade total

Dividir para conquistar

Partição do espaço de amostragem A1, A2, A3

Ter P(B|Ai), para todos os i

P(B) = P(B|A1) x P(A1) + P(A|A2) x P(A2) + P(B|A3) x P(A3)

Em geral: P(B) = SUMj( P(B|Aj) x P(Aj) )

### Regra de Bayes

Probabilidades a priori P(Ai)

Sabemos P(B|Ai) para todo o i

P(Ai|B) = P(Ai ∩ B)/P(B) = (P(B|Ai) x P(Ai)) / P(B) = (P(B|Ai) x P(Ai)) / SUMj( P(B|Aj) x P(Aj) )

Outra forma:

P(Causa|Efeito) = (P(Efeito|Causa) x P(Causa)) / P(Efeito)

## Independência

2 acontecimento são **independentes** se e só se **P(AB) = P(A) x P(B)**

 - Simétrico relativamente a A e B
 - Aplica-se o mesmo que P(A) = 0
 
Em geral dois acontecimentos que sejam mutuamente exclusivos e tenham probabilidade não nula não podem ser independentes

Em geral considera se que acontecimentos em experiências distintas são independentes (experiências independentes)

Independência 2 a 2 não implica independência

## Experiências de Bernoulli

Consiste em realizar uma experiência e registar se um dado acontecimento se verifica ou não

 - Seja *p* a probabilidade de sucesso, ou seja, *1-p* a de falhar
 - A probabilidade de *k* sucessos e *(n-k)* falhas é: **p^k x (1-p)^(n-k)**