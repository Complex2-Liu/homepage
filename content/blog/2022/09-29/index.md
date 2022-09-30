---
title: "Lattice"
date: 2022-09-29
comment: /blog/2022/09-29/
authors:
  - complex2liu
categories:
  - lattice
draft: false
---

格论在代数数论里有重要的应用. 我们先给出定义

{{<math-env-alt type = "Definition">}}
设 $V$ 是一个 $n$ 维的 $\mathbb{R}$-线性空间.
A <b>lattice</b> in $V$ is an additive subgroup of the form
$$
\Lambda = \mathbb{Z}v_1 + \cdots + \mathbb{Z}v_m
$$
such that $v_1, \cdots, v_m$ are linearly independent in $V$.
$\Lambda$ is said to be a complete lattice if $m = n$.
给定一个 lattice $\Lambda$, 我们还能定义集合
$$
\Phi := \{x_1v_1 + \cdots + x_nv_n: 0\le x_i < 1\}.
$$
称为 $\Lambda$ 的一个 fundamental mesh.
{{</math-env-alt>}}

注意 $\mathbb{R}$-线性无关一定 $\mathbb{Z}$-线性无关,
所以 lattice $\Lambda$ is a free abelian group of rank $m$.

对于 complete lattice, fundamental mesh 的一个基本性质是所有的
$\\{\gamma + \Phi: \gamma \in \Lambda\\}$ 构成了全空间 $V$ 的无交并.

之所以叫 a fundamental mesh 而不是 the fundamental mesh,
是因为 fundamental mesh 的定义依赖于 $\Lambda$ 的基的选取.
但是另一方面, fundamental mesh 的体积确是良定义的, 不依赖于基的选取.
这是因为一组 $\mathbb{Z}$-basis 到另一组 basis 的变换矩阵行列式一定是 $\pm 1$.
于是我们可以定义 the **volume** of $\Lambda$,
记为 $\operatorname{vol}(\Lambda)$.

## 格子群, 完备格子群的刻画性质

注意 $V \cong \mathbb{R}^n$ 是一个拓扑空间, 于是我们可以讨论 lattice 的拓扑性质.
显然 lattice 一定是离散的, 事实上, 离散这个性质刻画了 lattice.

{{<math-env type = "Proposition" counter = "true" label = "discrete">}}
Let $\Lambda$ be a subgroup of $V$. Then $\Lambda$ is a lattice
if and only if $\Lambda$ is discrete.
换句话说, 欧氏空间中的离散加法子群就是格子群.
{{</math-env>}}

{{<proof>}}
Lattice 显然是离散的, 现在我们证明反过来的方向.
Now assume $\Lambda$ is a discrete subgroup of $V$.

<p></p>

<span style="color: var(--color-fg-red);">
我们先说明 $\Lambda$ 是 $V$ 中的闭集.
</span>
对任意 $0$ 的开邻域 $U$, 由 $V$ 中加法的连续性,
存在更小的开邻域 $U' \subseteq U$ 使得 $x - y \in U$ for all $x, y \in U'$.
假如 $\Lambda$ 不是闭集, 那么存在 $x \notin \Lambda$,
使得对任意 $0$ 的开邻域 $U$, 都有 $(x + U') \cap \Lambda$ 非空.
因为 $V \cong \mathbb{R}^n$ 实际上是度量拓扑空间,
所以我们实际上有 $(x + U') \cap \Lambda$ 是无限集.
Choose two distinct elements, say $\gamma_1$ and $\gamma_2$,
then $0 \ne \gamma_2 - \gamma_1 =: \gamma$ belongs to $U' - U' \subseteq U$.
In summary, 对任意 $0$ 的开邻域 $U$, 都存在非零的 $\gamma \in U\cap \Lambda$,
这与 $\Lambda$ 的离散性矛盾.

<p></p>

Let $V_0$ be the subspace of $V$ spanned by $\Lambda$.
Let $m = \dim V_0$, then there exists $u_1,\cdots,u_m \in \Lambda$
which form a basis of $V_0$.
Let $\Lambda_0 = \mathbb{Z}u_1 + \cdots + \mathbb{Z}u_m$,
which is a subgroup of $\Lambda$.

<p></p>

<span style="color: var(--color-fg-red);">
We claim that $|\Lambda/\Lambda_0| < \infty$.
</span>
设 $\Phi_0$ 是 $\Lambda_0$ 在 $V_0$ 中的 fundamental mesh.
因为 $\\{\beta + \Phi_0: \beta \in \Lambda_0\\}$ 构成了 $V_0$ 的无交并,
所以对任意 $\gamma \in \Lambda$, 它形如 $\gamma = \beta + \alpha$,
其中 $\beta \in \Lambda_0, \alpha \in \Phi_0$
(hence $\alpha \in \Phi_0 \cap \Lambda$).
所有这样的 $\alpha$ 都落在 $\overline{\Phi_0}\cap \Lambda$,
这是一个有界集, 而且是闭集 (我么前面证明了 $\Lambda$ 闭),
而且是离散的, 所以 $\overline{\Phi_0}\cap \Lambda$ 是有限集.
这就说明了 $|\Lambda/\Lambda_0| < \infty$.

<p></p>

由有限 Abel 群的结构定理, $\Lambda$ admits a $\mathbb{Z}$-basis $v_1,\cdots,v_m$.
这些 $v_i$ 是 $\mathbb{R}$-线性无关的, 因为它们生成了 $V_0$.
{{</proof>}}


{{<math-env type = "Proposition" counter = "true">}}
Let $\Lambda$ be a lattice of $V$. Then $\Lambda$ is complete
if and only if there exists a bounded subset $M \subseteq V$
such that $\{\gamma + M: \gamma \in \Lambda\}$ covers $V$.
{{</math-env>}}

{{<proof>}}
If $\Lambda$ is complete, then take $M$ to be a fundamental mesh.

<p></p>

Conversely, let $V_0$ be the subspace spanned by $\Lambda$,
we need to show $V_0 = V$.
首先第一件事, 线性空间的子空间一定是闭的, 所以 $V_0$ 是闭集.
其次, 对任意 $v \in V$ 以及正整数 $n$, 我们有
$nv = w_n + v_n$ for some $w_n \in M$ and $v_n \in \Lambda \subseteq V_0$.
也就是说
$$
v = \frac{w_n}{n} + \frac{v_n}{n}
$$
因为 $M$ 有界, 所以 $\lim_{n\to\infty} \frac{w_n}{n} = 0$.
因为 $V_0$ 是闭集, 所以 $\lim_{n\to\infty} \frac{v_n}{n} \in V_0$.
{{</proof>}}

## 为什么离散赋值的值域一定是 $\mathbb{Z}$

设 $K$ 是一个域, 设 $\nu$ 是 $K^\times \to \mathbb{R}$ 一个 valuation.
如果进一步的 $\nu$ 实际上是 $K^\times \to \mathbb{Z}$, 则我们称 $\nu$ 是一个离散赋值.
你可能会觉得奇怪, 为什么离散赋值的定义就是射去 $\mathbb{Z}$,
按照字面的意思去理解应该是指 $\nu$ 的 image 是离散子群才对呀.
{{<cref target = "discrete" label = "Proposition 1">}} 回答了这个疑虑,
它告诉我们 $\mathbb{R}$ 的离散子群一定是格,
从而形如 $\mathbb{Z}\alpha$ for some $\alpha \in \mathbb{R}$ (只由这一个元素生成).
这样的子群显然 order-isomorphic to $\mathbb{Z}$,
所以在复合一个 order-isomorphism 的意义下, 我们总是能假定离散赋值的取值就是 $\mathbb{Z}$.

{{<cref target = "discrete" label = "Proposition 1">}} 告诉我们像
$\mathbb{Z} + \mathbb{Z}\sqrt{2}$ 这样的东西一定不是 $\mathbb{R}$ 的离散子群.

## Minkowski's Lattice Point Theorem

关于 lattice 还有一个重要的定理 -- Minkowski's Lattice Point Theorem.
如果你学过代数数论, 你就知道这个定理非常重要, 这个定理是我们研究正合列
$$
1 \to \mathcal{O}_K^\times \to K^\times \to J_K \to C_K \to 1
$$
中的 $\mathcal{O}_K^\times$ 和 $C_K$ 不可或缺的工具.

我们称欧氏空间中的一个子集 $X$
<span style = "color: var(--color-fg-purple); font-weight: bold;">
凸
</span>, 如果对任意 $x, y \in X, 0\le t \le 1$,
都有 $t\cdot x + (1-t)\cdot y \in X$; 我们称 $X$ 
<span style = "color: var(--color-fg-purple); font-weight: bold;">
中心对称
</span>, 如果对任意 $x \in X$, 都有 $-x \in X$.

{{<math-env type = "Theorem" counter = "true" text = "Minkowski's Lattice Point Theorem">}}
设 $\Lambda$ 是一个 complete lattice.
设 $X$ 是一个中心对称的凸集. 如果 $X$ 的体积充分大
$$
\operatorname{vol}(X) > 2^n\cdot \operatorname{vol}(\Lambda),
$$
那么 $X$ 包含 $\Lambda$ 中的一个<span style = "color: var(--color-fg-red); font-weight: bold;">非零格点</span>.
{{</math-env>}}

{{<proof>}}
我们说明只需证明存在 $\gamma_1\ne \gamma_2 \in \Lambda$ 使得
\begin{equation}
\label{eq:eq1}
\left(\gamma_1 + \frac{1}{2}X\right)
\cap
\left(\gamma_2 + \frac{1}{2}X\right) \ne \varnothing
\end{equation}
即可. 事实上, 如果 \eqref{eq:eq1} 成立, 那么存在 $x_1, x_2 \in X$ 使得
$\gamma_1 + \frac{1}{2}x_1 = \gamma_2 + \frac{1}{2}x_2$
$\implies$ $\gamma := \gamma_1 - \gamma_2 = \frac{1}{2}x_2 + (-\frac{1}{2})x_1$
is a non-zero element belongs to both $\Lambda$ and $X$ (利用了中心对称和凸).

<p></p>

Let $\Phi$ be a fundamental mesh of $\Lambda$.
假如 $\gamma + \frac{1}{2}X$ 关于 $\gamma \in \Lambda$ 两两不交, 我们有
$$
\operatorname{vol}(\Lambda) = \operatorname{vol}(\Phi) \ge
\sum_{\gamma \in \Lambda} \operatorname{vol}(\Phi \cap (\gamma + \tfrac{1}{2}X))
=
\sum_{\gamma \in \Lambda} \operatorname{vol}((\gamma + \Phi)\cap \tfrac{1}{2}X)
$$
这里我们利用了欧氏空间中 volume 的平移不变性.
因为 $\{\gamma + \Phi\}$ 覆盖了 $V$ (从而也覆盖了 $\frac{1}{2}X$), 所以我们有
$$
\sum_{\gamma \in \Lambda} \operatorname{vol}((\gamma + \Phi)\cap \tfrac{1}{2}X)
= \operatorname{vol}(\tfrac{1}{2}(X)) = 2^{-n}\operatorname{vol}(X).
$$
这与 $\operatorname{vol}(X) > 2^n\operatorname{vol}(\Lambda)$ 矛盾.
{{</proof>}}
