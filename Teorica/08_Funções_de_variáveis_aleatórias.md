# Funções de variáveis aleatórias

## Index

- [Funções de v.a. múltiplas](#funções-de-v.a.-múltiplas)
- [Expectância funções de v.a.](#expectância-funções-de-v.a.)
- [Momentos de funções](#momentos-de-funções)
- [Média](#média)

## Funções de v.a. múltiplas

Por vezes encontramos **problemas em que temos uma transformação deas v.a**: *X1, X2, ..., Xn* que produz v.a. *Y1, Y2, ..., Ym*

O caso mais simples é uma fubnção escalar de várias v.a.
- Z = g(X1, X2, ..., Xn)

## Expectância funções de v.a.

Z = g(X,Y)

E[Z] = Integral_-inf to +inf (Integral_-inf to +inf (g(x,y) * f_X,Y(x,y)) dx) dy

Para o caso de serem **discretas**
- E[Z] = SUM_i SUM_n (g(xi,yn) * p_X,Y(xi,yn))

## Momentos de funções

Momento de ordem n de uma função escalar de um vetor aleatório:

Z = g(W) *W é um vetor*

E[Z^n] = Integral_-inf to +inf ... Integral_-inf to +inf (g^n(x) * f_X(x)) dx

*x é um elemento do vetor W*

## Média

Se criarmos uma v.a. relativa á média de *n* variáveis IID Xi:
- **Mn = Sn / n**

E[Xi] = 𝜇 e Var(xi) = 𝜎^2

**E[Mn] = E[Sn/n]** = (SUM_i E[Xi]) / n = E[Xi] = **𝜇**

### Variância da Média

Var(Mn) = **Var(Sn/n)** = (1/n^2) * ((SUM_i Var[Xi]) / 1) = Var(Xi) / n = **𝜎^2/n**