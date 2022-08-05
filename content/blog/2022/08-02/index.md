---
title: "交换代数 1.1"
date: 2022-08-02
comment: /blog/2022/08-02/
authors:
  - complex2liu
categories:
  - commutative algebra
draft: false
---

### 习题 1.1

设 $a \in A$ 是任意一个元素, $I$ 是 $A$ 的一个理想,
我们可以考虑典范映射 $A \to A/I, a \mapsto \overline{a}$.
显然如果 $a$ 是 unit, then the same is true of $\overline{a}$.

Now assume $I$ is made up of nilpotent elements,
i.e. $I \subseteq \operatorname{nil}(A)$.
那么由 $\overline{a}$ 是 unit 可以反推出 $a$ 是 unit.
所以, 要判断一个元素是不是 unit,
we are safe to pass to its image in $A/\operatorname{nil}(A)$.

证明的过程基于下述基本性质:

{{< math-env type = "Lemma" counter = "true" >}}
$\text{nilpotent} + \text{unit} = \text{unit}$.
{{< /math-env >}}

{{< proof >}}
设 $u$ 是 unit 满足 $uv = 1$ ($v$ is also a unit),
$x$ 幂零满足 $x^n = 0$ (hence $x^m = 0$ for all $m \ge n$).
$u + x = u(1 + vx)$, 注意 $vx$ 也满足 $(vx)^n = 0$ 幂零,
所以我们可以一开始就不妨设 $u = 1$.

<p>
</p>

要证明 $1 + x$ 可逆, 我们有

$$
(1 + x)\left(\sum_{k=0}^{n-1}(-1)^kx^k\right) = 1 + (-1)^{n-1}x^n = 1.
$$

所以 $1 + x$ 确实是 unit.
{{< /proof >}}

现在 $\overline{a}$ 是 unit, 于是存在 $b \in A$ 满足
$\overline{ab} = \overline{1}$, i.e. $ab = 1 + x$ for some $x \in I$.
$x$ 幂零, 从而 $ab = 1 + x$ 是 unit $\implies a$ 是 unit.

### 习题 1.2

事实上, 我们有一个更一般的结论:

{{< math-env type = "Lemma" counter = "true" text = "Structure of ideals in product of rings" >}}
<br>
Let $A_i, i = 1, \cdots, n$ be a (finite) family of rings with $1$.
Let $I$ be an ideal of the product ring $A = \prod_{i=1}^n A_i$,
then $I$ is of the form $I_1 \times \cdots \times I_n$
where $I_i$ is an ideal of $A_i$.
{{< /math-env >}}

{{< proof >}}
See {{< url "https://math.stackexchange.com/a/1166731" >}}.
{{< /proof >}}

Consider the map $A \to A_1/I_1\times \cdots \times A_n/I_n$,
the kernel of this map is precisely $I_1 \times \cdots \times I_n$,
hence we get the isomorphism

$$
A_1\times \cdots \times A_n/I_1 \times \cdots \times I_n
\cong A_1/I_1 \times \cdots \times A_n/I_n.
$$

A product $C \times D$ of two non-zero rings $C$ and $D$ always has zero divisors:
taking $c \in C, d \in D$ both non-zero, we get $(0,0) = (c,0)(0,d)$.

于是 $A$ 的素理想一定是恰好其中一个 $I_i$ 是 $A_i$ 的素理想,
其他的 $I_j$ 都满足 $I_j = A_j$.

### 习题 1.3

用到了一个 $\operatorname{rad}(A)$ 的一个刻画性质:

{{< math-env type = "Lemma" counter = true >}}
$x \in \operatorname{rad}(A)$ if and only if
$1 + xa \in A^\times$ for all $a \in A$.
{{< /math-env >}}

满射对于同态来说是个很好的性质, e.g. prime ideals are preserved.

Counter example 的构造思路是我们希望 $\operatorname{rad}(A) = (0)$.

第 (b) 问利用了当 $f$ 是满射的时候, 我们有
$f(IJ) = f(I)f(J)$, 其中 $I, J$ 是 $A$ 的理想
(注意 $f(I), f(J)$ 是 $B$ 的理想).

### 习题 1.4

书里面是证明了 $a = p_1\cdots p_m$ 分解为一堆素元的乘积 is essentially unqiue.

必要性: 设 $a$ 是不可约元, 我们要证明 $a$ 是素元.
因为 $a$ 存在素元分解, 所以 $a = p\cdot u$ for some prime element $p$.
因为 $a$ 不可约, 所以 $u$ is a unit $\implies (a) = (p)$ is prime.

设 $(a_1) \subseteq (a_2) \subseteq \cdots$ 是一个升链, 我们要证明他 eventually terminate.
对于任意一个元素 $a$, 他总能分解成 $a = p_1\cdots p_m$ (这里我们不要求素元两两不同).
我们称 $a$ is of weight $m$, 由素元分解的唯一性知 $m$ is well-defined.
注意到 $(a) \subseteq (b) \iff b \mid a \iff b$ 的 weight $\le a$ 的 weight.
任意元素的 weight 一定是一个非负整数,
所以 $(a_1) \subseteq (a_2) \subseteq \cdots$ eventually terminate.

充分性: 现在不可约元一定是素元. 我们只需证明任意元素 $a$ 都可以分解为不可约元的乘积.
如果 $a$ 本身是不可约元, we are done.
否则 $a = a_1a'$, 其中 $a_1, a'$ 都不是 unit.
即 $(a) \subset (a_1) \ne (1)$.
对 $a_1$ 作同样的操作, 因为主理想满足 a.c.c.,
所以对充分大的 $N$, $a_N$ 是不可约元 (记为 $p_1$).
我们有 $p_1 \mid a, a = p_1b_1$ for some $b_1 \in A$,
即 $(a) \subset (b_1)$. 对 $b_1$ 作同样的操作知 $b_1 = p_2b_2$,
以此类推得到 $(a) \subseteq (b_1) \subseteq (b_2) \subseteq \cdots$.
因为主理想满足 a.c.c., 所以 $a$ 可以分解为有限个不可约元 $p_1,\cdots,p_m$ 的乘积.

利用这个习题的结论我们可以证明

{{< math-env type = "Lemma" counter = true >}}
PID 一定是 UFD.
{{< /math-env >}}

{{< proof >}}
因为所有理想都是主理想, 所以不可约元对应的主理想是极大理想,
极大理想一定是素理想, 从而不可约元一定是素元.
接下来只需证明主理想满足 a.c.c..

<p>
</p>

设 $(a_1) \subseteq (a_2) \subseteq \cdots$ 是一个升链,
it is well-known that 它们的并也是一个理想, 记为 $(a)$.
By definition $(a_i) \subseteq (a)$ for all $i$.
另一方面, by definition $a \in (a_{i_0})$ for some $i_0$.
所以只能是 $(a_i) = (a)$ for all $i \ge i_0$.
{{< /proof >}}

### 习题 1.5

这道习题告诉我们对于任意理想 $I$, 存在包含 $I$ 的极小素理想.

设 $\mathfrak{p}, \mathfrak{q}$ 是两个素理想,
我们可以定义偏序 $\mathfrak{p} \le \mathfrak{q} \iff \mathfrak{p} \supseteq \mathfrak{q}$.
习题的前半部分就是要我们证明任意一个 chain 都有上界,
并且这个上界就是 chain 中元素的 intersection.

设 $ab \in \bigcap P_\lambda$. If $a \in P_\lambda$ for all $\lambda$, then we are done.
Now assume $a \notin P_{\lambda_0}$ for some $\lambda_0 \in \Lambda$,
then $b \in P_{\lambda_0}$ since $P_{\lambda_0}$ is prime.
对于任意 $\lambda \in \Lambda$,

- 如果 $\lambda_0 \le \lambda$, 那么 $a \notin P_{\lambda}$, 从而 $b \in P_{\lambda}$.
- 如果 $\lambda_0 \ge \lambda$, 那么 $b \in P_{\lambda_0} \subseteq P_{\lambda}$. 

Hence $b \in \bigcap P_{\lambda}$.

### 习题 1.6

这个结论有一个专门的名字叫 [Prime avoidance](https://stacks.math.columbia.edu/tag/00DS).

如果一个理想 $I$ 无法被任何一个素理想 $P_i$ 给覆盖,
那么这些 (有限个) 素理想的并集也无法覆盖 $I$. 等价地说,
如果一个理想 $I$ 被有限个素理想 $P_i$ 的并集给覆盖,
那么实际上 $I$ 被某一个 $P_i$ 给覆盖.

{{< box color = "blue" >}}
这是一个不严格的说法, 严格的说法是我们还可以放宽条件为允许 $P_i$ 之中有至多两个不是素理想.
{{< /box >}}

与 Prime avoidance "对偶" 的结论是 {{< cite target = "atiyah" label = "1" text = "Propsition 1.11" >}}

如果一个素理想 $P$ 覆盖了有限个理想 $I_i$ 的乘积,
那么 $P$ 实际覆盖了某个 $I_i$. 等价地说,
如果每一个理想 $I_i$ 都无法被素理想 $P$ 给覆盖,
那么它们的交集也无法被素理想 $P$ 给覆盖.

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
