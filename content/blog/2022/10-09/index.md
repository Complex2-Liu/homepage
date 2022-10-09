---
title: "Gauss Lemma in Integrally Closed Domain"
date: 2022-10-09
comment: /blog/2022/10-09/
authors:
  - complex2liu
categories:
  - number theory
draft: false
---

The following proposition is a exercise from
{{<cite target = "textbook" label = "1">}}.
具体来说, 第一章第二节的习题 2.

{{<math-env type = "Proposition" counter = "true">}}
If $A$ is an integrally closed domain, then the polynomial ring
$A[t]$ is also integrally closed.
{{</math-env>}}

## Gauss Lemma

我们熟知的 Gauss Lemma 是应用在 UFD 上的,
事实上, 在整闭环上我们也有一个对应的 Gauss Lemma.
Let $A$ be an integrally closed domain with field of fraction $K$.

{{<math-env type = "Lemma" counter = "true" label = "gauss">}}
Let $f(t)$ be a monic polynomial in $A[t]$ and suppose that
$f(t) = g(t)h(t)$ in $K[t]$ with $g, h$ monic.
Then $g, h$ have coefficients in $A$.
{{</math-env>}}

{{<proof>}}
设 $L$ 为 $f$ 在 $K$ 上的分裂域, 表 $f(t) = \prod_{i=1}^r(t - \alpha_i)$.
Let $B$ the integral closure of $A$ in $L$, then 所有的 $\alpha_i \in B$.
注意到 $g(t)$ 是某些 $(t - \alpha_i)$ 的乘积, 所以 $g(t)$ 的系数落在 $B$ 里.
另一方面 $g(t) \in K[t]$, 而 $A$ 整闭所以 $g(t)$ 的系数落在 $B \cap K = A$.
{{</proof>}}

注意首一条件是必要的.

## Proof of Proposition 1

注意到我们有 $A[t] \subseteq K[t] \subseteq \text{Frac}(A[t])$,
so we see that $\text{Frac}(A[t]) = K(t)$.
Suppose $f \in K(t)$ is integral over $A[t]$,
then $f$ is also integral over $K[t]$.
因为 $K[t]$ 是 PID (hence UFD), 熟知 UFD 整闭, 故 $f \in K[t]$.
于是命题归结为:
<span style = "color: var(--color-fg-red);">
$A$ is integrally closed in $K$ $\implies$
$A[t]$ is integrally closed in $K[t]$.
</span>

第一个观察: 因为 $t \in A[t]$, 所以 $t$ 以及 $t^n$ are integral over $A[t]$.
$f(t) \in K[t]$ is integral if and only if $f(t) + t^n$ is integral.

Assume $f(t) \in K[t]$ is integral over $A[t]$.
Then $f(t)$ is a root of
$$
q(x) := x^n + a_{n-1}(t)x^{n-1} + \cdots + a_0(t).
$$
where $a_i(t) \in A[t]$. 选取充分大的整数 $m$
满足 $m \ge \deg(f)$ 且 $m \ge \deg a_i(t)$ for all $i$,
并考虑 $f_1(t) = f(t) - t^m$, 则 $f_1(t)$ 是 $q_1(x) := q(x + t^m)$ 的根. 表
$$
q_1(x) = x^n + b_{n-1}(t)x^{n-1} + \cdots + b_0(t),
$$
注意到 $b_0(t) = q(t^m)$ which is monic by the choice of $m$.
因为 $q_1(f_1(t)) = 0$, 我们有 $K[t]$ 中的分解
$$
-b_0(t) = f_1\cdot (f_1^{n-1} + b_{n-1}(t)f_1^{n-2} + \cdots + b_1(t))
=: f_1(t) \cdot g(t).
$$
因为 $f_1(t)$ 和 $b_0(t)$ 都是 monic, 所以 $g(t)$ 也是 monic.
最后注意到 $b_0(t) = q(t^m) \in A[t]$, 于是应用
{{<cref target = "gauss" label = "Lemma 2">}} 便知 $f_1(t) \in A[t]$
and hence $f(t) \in A[t]$.

{{<references>}}
{{<bibitem "textbook">}}
Jürgen Neukirch.
<i>Algebraic Number Theory</i>.
Grundlehren der mathematischen Wissenschaften (volume 322).
{{</bibitem>}}
{{<bibitem>}}
{{<url "http://www.math.lsa.umich.edu/~speyer/631_2014/GaussLemma.pdf">}}
{{</bibitem>}}
{{<bibitem>}}
{{<url "https://math.stackexchange.com/questions/412714">}}
{{</bibitem>}}
{{</references>}}
