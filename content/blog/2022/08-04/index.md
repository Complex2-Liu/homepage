---
title: "交换代数 1.2"
date: 2022-08-04
comment: /blog/2022/08-04/
authors:
  - complex2liu
categories:
  - commutative algebra
draft: false
---

### 习题 2.1

事实上, 这里用到了 Nakayama's Lemma 的一个变形:

{{< math-env type = "Lemma" counter = true >}}
Let $M$ be a finite $A$-module and $I$ an ideal of $A$.
If $IM = M$, then there exists $i \in M$ such that
$im = m$ for all $m \in M$. 换句话说,
如果理想 $I$ 固定 $M$, 那么存在理想 $I$ 中的某个元素固定 $M$ 中的所有元素.
{{< /math-env >}}

{{< proof >}}
由 Nakayama's Lemma 知存在 $a \in A$ 满足
$aM = 0$ 且 $a \equiv 1 \mod I$.
Take $i = 1 - a \in I$.
{{< /proof >}}

于是存在 $e \in I$ 满足 $ei = i$ for all $i \in I$.
In particular $e^2 = e$ 即 $e$ 是幂等元. 我们有

$$
I = eI \subseteq eA \subseteq I \implies eA = (e) = I.
$$

### 习题 2.2

显然 $I$ 和 $\operatorname{ann}(M)$ 都零化 $M/IM$,
所以 $\operatorname{ann}(M/IM) \supseteq I + \operatorname{ann}(M)$,
两边取 radical 便得到了 $\supseteq$ 关系.

另一方面, 设 $a \in \text{LHS}$, then $a^m =: y \in \operatorname{ann}(M/IM)$,
即 $yM \subseteq IM$. 由 Cayley-Hamilton Theorem,
存在 $i \in I$ 使得 $y^n + i \in \operatorname{ann}(M)$,
即 $a^{mn} \in \operatorname{ann}(M) + I$, 所以 $a \in \text{RHS}$,
这就证明了 $\subseteq$ 关系.

### 习题 2.3

我们有短正合列 $0 \to M \cap N \to M \to M/(M \cap N) \to 0$.
要说明 $M$ 有限生成, 只需证明 $M/(M \cap N)$ 有限生成.
由第二同构定理 $M/(M \cap N) \cong (M + N)/N$.
因为 $M + N$ 有限生成, 所以 $(M + N)/N$ 作为商模更加是有限生成的.
同理 $N$ 也是有限生成的.

一般情况下, 给定两个模 $N \subseteq M$, 即使大模 $M$ 有限生成,
比较小的子模 $N$ 也未必有限生成.
要使得 $N$ 有限生成, 一个充分条件是商模 $M/N$ is finitely presented.
这道习题给了另一个有限生成的充分条件.

### 习题 2.4

(a) 任取 $A$ 的一个极大理想 $\mathfrak{m}$ 并设 $k = A/\mathfrak{m}$.
如果 $M \cong A^n$, 那么 $M/\mathfrak{m}M \cong k^n$.
For a field $k$ the result is well-known.

(b) 设 $C$ 是一个矩阵, the rank of $C \ge r$ if and only if
there exists a minor of order $r$ which is non-zero.

(c) 注意到 $e_i = (0,\cdots,1,\cdots,0)$ (第 $i$ 个分量是 $1$ 其余是 $0$)
是 $A^n$ 的 minimal basis 也是一组 basis.
任意的 minimal basis 都是 $e_i$ 通过一个可逆线性变换得到
c.f. {{< cite target = "matsumura" label = "2" text = "Theorem 2.3" >}}

### 习题 2.5

[Stacks project](https://stacks.math.columbia.edu/tag/0519) 系统地整理了
finite module 和 finitely presented module 的判定准则:

- 最基本的是 (3): 如果 $M_2$ 有限生成, 那么商模 $M_3$ 也是有限生成.
- 其次是 (1): 如果子模 $M_1$ 和商模 $M_3$ 都有限生成, 那么中间的 $M_2$ 也是有限生成.
- 从 (5) 开始, 就没那么平凡了: 大模 $M_2$ 有限生成,
商模 $M_3$ finitely presented, 那么子模 $M_1$ 也有限生成.
- (4): 如果 $M_2$ is finitely presented, 那么商模 $M_3$ 只能确定是有限生成,
但如果 $M_1$ 也是有限生成的, 就能把 finitely presented 过渡到商模 $M_3$ 上去.
- (2): 类似于 (1), 子模 $M_1$ 和商模 $M_3$ 的 finitely presented,
能 assemble 成 $M_2$ 的 finitely presented. 只不过证明并不像 (1) 那么 trivial.

{{< references >}}
{{< bibitem "atiyah" >}}
M.F.Atiyah and I.G.MacDonald.
<i>Introduction to Commutative Algebra</i>.
{{< /bibitem >}}
{{< bibitem "matsumura" >}}
H. Matsumura.
<i>Commutative Ring Theory</i>.
{{< /bibitem >}}
{{< /references >}}
