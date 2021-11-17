# Esperança matemática

## Index

- [Extensão das definições](#extensão-das-definições)
- [Correlação](#correlação)
- [Independência](#independência)
- [Covariância](#covariância)
- [Coeficiente de correlação](#coeficiente-de-correlação)

## Extensão das definições
Os **momentos** de ordem *j* e *k* das variáveis *X* e *Y* definem-se como sendo:

- Caso **discreto**:
  - E[X^j Y^K]= SUM_m (SUM_n ((x_m)^j * (y_n)^k * p_X,Y(x_m , y_n))) 

- Caso **contínuo**:
  - E[X^j Y^k] = Integral_-inf to +inf (Integral_-inf to +inf ( x^j * y^k f_XY(x,y) dx) dy)

Se *j=1* e *k=0* ou *j=0* e *k=1* temos os **valores médios** de *X* e *Y*

Se *j=2* e *k=0* ou *j=0* e *k=2* temos os **valores quadráticos médios**

Os **momentos centrais conjuntos** de ordem *j* e *k* das variáveis *X* e *Y* definem-se como:
- **E[ (X - E[X])^j (Y - E[Y])^k ]**

Para *j=2* e *k=0* ou *j=0* e *k=2* obtemos as **variâncias** de *X* e *Y*

## Correlação

O momento de ordem *j=k=1*, **E[XY]** é designado de **correlação** das variáveis *X* e *Y*
- Quando **E[XY]=0** as variáveis são **ortogonais**

## Independência

Sendo *X* e *Y* **independentes**
- **E[XY] = E[X] * E[Y]**

**Demonstração:**

E[XY] = SUM_x,y (x * y * p_X,Y(x,y))

= SUM_x,y (x * y * p(x) * p(y))

= [SUM_x (x p_X(x))] * [SUM_x (y p_Y(y))]

= E[X] * E[Y]

## Covariância

A **covariância** de duas variáveis *X* e *Y* é o seu **momento central** de ordem *j=k=1*
- Ou seja **E[(X - E[X]) (Y - E[Y])]**
- Designa-se **Cov(X,Y)**

**Demonstração**

Cov(X,Y) = E[(X - E[X]) * (Y - E[Y])]

= E[X*Y - X*E[Y] - Y*E[X] + E[X]*E[Y]]

= E[XY] - 2*E[X]*E[Y] + E[X]*E[Y]

= E[XY] - E[X]*E[Y]

E[X] = 0 ou E[Y] = 0 => Cov(X,Y) = E[XY]

É uma **generalização da Variância**
- Cov(X,Y) = E[(X - E[X]) (X - E[X])] = Var(X)

Medida de relação linear entre variáveiws **aleatórias**

Se relação **não linear**, covariância pode **não ser sensível á relação**

### Covariância e independência

Se *X* e *Y* são **independentes*`então **Cov(X,Y) = 0**

Uma vez que **Cov(X,Y) = E[XY] - E[X] * E[Y]*, se *X* e *Y* são independentes implica:
- **E[XY] = E[X] * E[Y]**
- *O contrarário não é verdadeiro, se Cov(X,Y)=0, X e Y podem não ser independentes ainda assim*

### Propriedades

1. Cov(X,X) = Var(X)
2. Cov(X,Y) = Cov(Y,X)
3. Cov(cX,Y) = c * Cov(X,Y)
4. Cov(X,Y + Z) = Cov(X,Y) + Cov(X,Z)

**Demonstração 4.**

E[X (Y+Z)] - E[X] * E[Y + Z]

= E[XY] + E[XZ] - E[X]*E[Y] - E[X]*E[Z]

= E[XY] - E[X]*E[Y] + E[XZ] - E[X]*E[Z]

= Cov(X,Y) + Cov (X,Z)

## Coeficiente de correlação

De duas variáveis, *X* e *Y*:
- **𝜌_XY = Cov(X,Y) / (𝜎_X * 𝜎_Y)**

Demonstra-se que **-1 <= 𝜌_XY <= 1**

E que os valores extremos (1 e -1) se obtém para a relação linear **Y= aX + b* com a>0 ou a<0, respectivamente

Se **𝜌_XY = 0** as variáveis dizem-se **descorrelacionadas** 

**Independentes => descorrelacionadas**

### Exemplo

|x	|y		|P(x,Y)	|
|-	|-		|-		|
|0	|0		|0.2	|
|1	|1		|0.1	|
|1	|2		|0.1	|
|2	|1		|0.1	|
|2	|2		|0.1	|
|3	|3		|0.4	|
|	|		|		|
| 	|Soma	|1,0	|

|x	|y		|P(x,y)	|xy P(x,Y)	|x P(x)	|y P(y)	|x^2 P(x)	|
|-	|-		|-		|-			|-		|-		|-			|
|0	|0		|0.2	|0			|0		|0		|0			|
|1	|1		|0.1	|0.1		|0.1	|0.1	|0.1		|
|1	|2		|0.1	|0.2		|0.1	|0.2	|0.1		|
|2	|1		|0.1	|0.2		|0.2	|0.1	|0.4		|
|2	|2		|0.1	|0.4		|0.2	|0.2	|0.4		|
|3	|3		|0.4	|3.6		|1.2	|1.2	|3.6		|
|	|		|		|			|		|		|			|
|	|Soma	|1.0	|4.5		|1.8	|1.8	|4.6		|

### Exemplo cáculo de 𝜌_XY

- Var(X) = E[X^2] - E[X]^2 = 4.6 - 3.24 = 1.36
- Var(Y) = Var(X)

- Cov(X,Y) = E[XY] - E[X] * E[Y] = 4.5 - 1.8 * 1.8 = 1.26

Finalmente:

𝜌_XY = Cov(X,Y) / (𝜎_X * 𝜎_Y) = 1.25 / (sqr(1.36) * sqr(1.36)) = 0.926


