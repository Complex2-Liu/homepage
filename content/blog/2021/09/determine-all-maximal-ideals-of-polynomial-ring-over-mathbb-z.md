---
title: Determine All Maximal Ideals of Polynomial Ring over $\mathbb{Z}$
date: 2021-09-15
tags:
  - Commutative Algebra
draft: false
---

In this article, we will determine all maximal ideals $\mathfrak{m}$ of $R:=\mathbb{Z}[x_1,\cdots,x_m]$.

<div class="claim">
$\mathrm{char}(R/\mathfrak{m}) = p$ for some prime $p$,
and $\mathfrak{m}\cap \mathbb{Z}$ is of form $(p)$.
</div>

<div class="proof">
事实上, 若 $n \in \mathfrak{m} \cap \mathbb{Z}$, 则 $n$ 在 $R/\mathfrak{m}$ 中为 $0$,
而 $R/\mathfrak{m}$ 是一个域, 特征为 $0$ 或素数 $p$,
由此便知 $n = 0$ 或者 $p \mid n$.
注意 $\mathfrak{m} \cap \mathbb{Z}$ 不可能为 $0$,
否则的话, 任取 $b \in \mathbb{Z}$, 考虑 $\mathfrak{m}' = (b,\mathfrak{m})$ 为由 $b$ 和 $\mathfrak{m}$ 生成的理想,
显然 $\mathfrak{m} \subset \mathfrak{m}' \ne R$, 这与 $\mathfrak{m}$ 为极大理想矛盾.

于是我们有 $\mathfrak{m} \cap \mathbb{Z} = (q)$ for some $q \in \mathbb{Z}$ such that $p \mid q$.
Again since $\mathfrak{m}$ is a maximal ideal, it must be $q = p$
(否则的话和前面一样, 我们可以找到一个比 $\mathfrak{m}$ 更大的理想).
</div>

由前面的讨论知, $R/\mathfrak{m}$ 能表示成 $k[\overline{x}_1, \cdots, \overline{x}_m]$,
where $k = \mathbb{Z}/(p), \overline{x}_i$ is the canonical image of $x_i$ under $\Phi: R \to R/\mathfrak{m}$.

在推进我们的证明之前, we need some profound knowledge from
[Algebra, Serge Lang (GTM 211)](https://link.springer.com/book/10.1007/978-1-4613-0041-0).

### Material From GTM 211

Let $A$ be a commutative ring and $\mathfrak{p}$ a *prime* ideal.
Note that for a prime ideal $\mathfrak{p}, S := A\setminus \mathfrak{p}$ is a multiplicatively closed set,
which then give rise to a ring $A_\mathfrak{p} := S^{-1}A$ by localization.

<div class="lem">
For a prime ideal $\mathfrak{p}$, the localization $A_{\mathfrak{p}}$ is a local ring
with $\mathfrak{p}A_{\mathfrak{p}}$ its unique maximal ideal.
</div>

<div class="proof">
See <a href="https://math.stackexchange.com/q/300459">Mathematics Stack Exchange (question 300446)</a>.
关键的地方在于, 对于 $\frac{a}{b} \in A_{\mathfrak{p}}$,
若 $a \in S$, 则 $\frac{a}{b}$ 实际上是一个可逆元.
而 $\mathfrak{p}A_{\mathfrak{p}}$ 中元素都形如 $\frac{x}{y}$ with $x \in \mathfrak{p}$.
</div>

Let $L$ be a field and $\varphi: A \to L$ a homomorphism.
注意环到域的同态有个特点是 kernel 为素理想 (this is because the subring of a field is necessarily an integral domain).
然后由 [the universal property of localization](https://stacks.math.columbia.edu/tag/00CP),
we can extend $\varphi$ to a homomorphism of $A_{\mathfrak{p}}$ to $L$ by letting $\varphi(x/y)=\varphi(x)/\varphi(y)$.

<div class="claim">
$R$ 的所有的极大理想都形如
\begin{equation}
\mathfrak{m} = (p, f_1(x_1), f_2,(x_1,x_2), \cdots, f_m(x_1,\cdots,x_m)) =: I
\end{equation}
</div>

<div class="proof">
取 $\overline{f}_1 \in k[x]$ 为 $\overline{x}_1$ 的极小多项式,
then one can find $f_1(x) \in \mathbb{Z}[x]$ a representative of $\overline{f}_1$.
Note that $\Phi(f_1(x_1)) = \overline{f}_1(\overline{x}_1) = 0$, thus $f_1(x_1) \in \mathfrak{m}$.

取 $\overline{f}_2 \in (k[\overline{x}_1])[x]$ 为 $\overline{x}_2$ 的极小多项式,
注意 $\overline{f}_2 = \overline{f}_2(\overline{x}_1,x)$ 可以看作是两个变元的 polynomial over $k$,
然后再把 $\overline{x}_1$ 代入第一个变元.
Then similarly one can find $f_2(x,y) \in \mathbb{Z}[x,y]$ a representative of $\overline{f}_2$
for which $\Phi(f_2(x_1,x_2)) = \overline{f}_2(\overline{x}_1,\overline{x}_2) = 0$,
thus $f_2(x_1,x_2) \in \mathfrak{m}$.
(请仔细想清楚这里的 $f_1, f_2$ 是怎么来的)

以此类推, 我们可以进而得到 $f_i \in \mathfrak{m}, i \ge 3$,
于是有 $I \subseteq \mathfrak{m}$, 另一方面,
由 $I$ 的构造知 $R/I = k[\overline{x}_1,\cdots,\overline{x}_m] = R/\mathfrak{m}$, 因此 $I = \mathfrak{m}$.
</div>

<div class="exmp">
$\mathbb{Z}[x]$ 的极大理想 $\mathfrak{m}$, 一定是含有某个素数 $p$,
然后划归成找 $k[x], k = \mathbb{Z}/(p)$ 当中的一个不可约多项式, e.g.
$\mathfrak{m} = (2, x^2+x+1)$.
</div>


