---
title: "代数数论中关于 Norm 的一个简单性质"
date: 2022-09-30
comment: /blog/2022/09-30/
authors:
  - complex2liu
categories:
  - number theory
draft: false
---

Let $A$ be an integrally closed domain with field of fractions $K$.
Let $L/K$ be a finite separable extension of degree $d = [L:K]$.
Let $B$ be the integral closure of $A$ in $L$.
设 $\sigma_1,\cdots,\sigma_d$ 为 $L$ 上的所有 $K$-嵌入.
对于 $K$ 中的一个元素 $\alpha$, 我们有

$$
N(\alpha) =N_{L/K}(\alpha) = \prod_{i=1}^d \sigma_i(\alpha) \in K.
$$

注意 $K$-嵌入当中一定有一个是 $\operatorname{id}$ (不妨设为 $\sigma_1$),
于是 $N(\alpha) = \alpha\cdot \beta$, 这里
$\beta = \prod_{i=2}^d\sigma_i(\alpha)$.

如果 $\alpha \in B$ is integral over $A$,
那么任意 $\sigma_i(\alpha)$ 也都 integral over $A$.
所以 $N(\alpha), \beta$ are also integral over $A$.

{{<math-env type = "Lemma" counter = "true">}}
$N(\alpha), \beta = \frac{N(\alpha)}{\alpha} \in B$.
{{</math-env>}}

{{<proof>}}
我们已经说明了 $\beta, N(\alpha)$ are integral over $A$,
只需再说明 $\beta, N(\alpha) \in L$ 就可以了.
显然 $N(\alpha) \in K \subseteq L$, 而 $\beta = N(\alpha)\cdot \alpha^{-1}$,
因为 $\alpha^{-1}$ 是 $L$ 中的元素, 所以 $\beta$ 也是 $L$ 中的元素.
{{</proof>}}

{{<math-env type = "Proposition" counter = "true" text = "Unit Criterion by Norm">}}
$\alpha \in B^\times$ if and only if $N(\alpha) \in A^\times$.
{{</math-env>}}

{{<proof>}}
如果 $\alpha \in B^\times$, choose $\beta \in B$ such that $\alpha\beta = 1$,
then $1 = N(\alpha\beta) =$ $N(\alpha)\cdot N(\beta) \implies$
$N(\alpha) \in A^\times$. 反之, 假若 $N(\alpha) \in A^\times$,
则存在 $\gamma \in A$ 使得
$$
1 = N(\alpha)\gamma = \alpha\cdot \frac{N(\alpha)}{\alpha}\cdot\gamma
= \alpha\cdot \left(\frac{N(\alpha)}{\alpha}\cdot \gamma\right)
$$
也就是说 $\frac{N(\alpha)}{\alpha}\cdot\gamma$ 就是 $\alpha$ 在 $B$ 中的逆.
{{</proof>}}

我们要判断 $\mathcal{O}_{K}$ 中的一个元素 $\alpha$ 是不是 unit,
只需判断它的 norm 的绝对值 $|N(\alpha)|$ 是否等于 $1$ 即可.
