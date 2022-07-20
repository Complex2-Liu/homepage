---
title: "IMO 2022 Problem 5"
date: 2022-07-16
comment: /blog/2022/07-16/
authors:
  - complex2liu
categories:
  - IMO
  - math olympiad
draft: false
---

{{< math-env-alt type = "Problem" >}}
Find all triples $(a, b, p)$ of positive integers with $p$ prime and

$$
a^p = b! + p.
$$
{{< /math-env-alt >}}

先分析 $p = 2$ 为唯一偶素数的情形, 此时 $a^2 = b! + 2$.
因为 $a^2 \equiv 1, 0 \pmod{4}$, 若 $b \ge 4$,
则 $b! + 2 \equiv 2 \pmod{4}$. 故 $b \le 3$, 我们逐个验证:

- 若 $b = 1$, 则 $a^2 = 3$, 无解.
- 若 $b = 2$, 则 $a^2 = 4 \implies a = 2$.
- 若 $b = 3$, 则 $a^2 = 8$, 无解.

所以, 当 $p = 2$ 时, 有且只有一组解 $\boxed{(2, 2, 2).}$
从下面开始, 我们总是假设 $p$ 是**奇素数**.

若 $b = 1$, 则 $a^p = p + 1$, 此时 $a$ 一定是偶数,
$a \ge 2 \implies p + 1 = a^p \ge 2^p$, 矛盾.
于是我们知道 $b \ge 2$ 且 $a$ 一定是一个奇数 $\ge 3$.

{{< math-env type = "Claim" >}}
$a$ 一定被 $p$ 给整除.
{{< /math-env >}}

{{< proof >}}
在实际做题的时候, 我一开始是希望能用 Fermat's little theorem,
所以假设 $\gcd(a, p) = 1$, 下面我们来引出矛盾.

<p>
</p>

由 Fermat's little theorem 知此时 $a^p \equiv a \pmod{p}$, 故 $b! \equiv a \pmod{p}$.
因为 $\text{LHS}$ 不被 $p$ 整除, 所以 $2 \le b \le p - 1$.
下面我们再给出 $b$ 的一个更好的下界:

{{< math-env type = "Lemma" >}}
$a \le b \le p - 1$.
{{< /math-env >}}

{{< subproof >}}
利用 AM-GM 不等式, 我们有

$$
b! < \left(\frac{b+1}{2}\right)^b \le \left(\frac{b+1}{2}\right)^{p-1}.
$$

假若 $b < a$, 则我们有

$$
a^p < \left(\frac{a+1}{2}\right)^{p-1} + p < 2\cdot \left(\frac{a+1}{2}\right)^{p-1},
$$

这里第二个小于号是因为 $p < 2^{p-1} \le \left(\frac{a+1}{2}\right)^{p-1}$.
由此进一步推出

$$
\left(\frac{2a}{a+1}\right)^{p-2}\cdot \frac{a^2}{a+1} < 1,
$$

矛盾.
{{< /subproof >}}

此时 $a \mid \text{LHS}$, 但是 $\text{RHS} \equiv p \ne 0 \pmod{a}$, 矛盾.
{{< /proof >}}

我们设 $a = k\cdot p$, 其中 $k \in \mathbb{N}$.
此时 $v_p(a^p) \ge p \ge 3$, 故 $v_p(b!) = 1$, 于是我们得到了 $b$ 的一个很好的界

\begin{equation}
p \le b \le 2p - 1.
\end{equation}

{{< math-env type = "Claim" >}}
$k \le p - 1$.
{{< /math-env >}}

{{< proof >}}
我们有 $b! = a^p - p = k^p\cdot p^p - p$. 另一方面

$$
b! \le (2p-1)! < \left(\frac{1+2p-1}{2}\right)^{2p-1} = p^p\cdot p^{p-1}.
$$

假若 $k \ge p$, 则我们有

$$
p^p\cdot p^p - p < p^p \cdot p^{p-1} \implies p^{2p-1}(p-1) < p,
$$

矛盾.
{{< /proof >}}

{{< math-env type = "Claim" >}}
$a = p$, 换句话说, 刚好是 $k = 1$ 倍.
{{< /math-env >}}

{{< proof >}}
若 $k \ne 1$, 则 $a$ 有某个素因子 $q \mid k$, 注意这个素因子 $q < p$.
因为 $b \ge p$, 所以 $q \mid b!$. 但 $q \nmid p$, 所以 $q \nmid \text{RHS}$.
可另一方面, 显然 $q \mid \text{LHS}$, 矛盾.
{{< /proof >}}

以上这些讨论都是水到渠成的, 并不困难. 现在问题归结于求方程

\begin{equation}
\label{eq:reduced-form}
b! = p^p - p = p(p^{p-1} - 1)
\end{equation}

的正整数解.

做到这里我就一时间被卡住了. 先代个 $p = 3$ 进去发现 $b = 4$,
我猜测应该不会有除此之外的解了, 我希望能把 $p$ 给 bound 住.

我首先分析了一下 $b$ 应该满足的同余关系, 利用 Wilson's theorem 可以知道 $b$ 满足

$$
(b-p)! \equiv 1 \pmod{p}.
$$

思来想去, 这东西好像并没有什么用处.

其次我注意到 $b!$ 作为阶乘有很多的因子, $(p-1)$ 两边都有了, 我来分析一下 $(p-2)$.
假如 $p \ge 5$, 那么 $(p-2)$ 非平凡, 是 $\text{LHS}$ 的因子, 由此便得到同余关系
$2^{p-1} \equiv 1 \pmod{p-2}$. 思来想去, 这个同余关系似乎也没什么用处.
类似的我还分析了 $(p+2)$, 甚至盲目地考虑了 $(p-3)$.

画风一转, 我意识到了问题所在, <b>就 TM 该考虑</b> $(p-1)$ 呀,
因为 $p-1$ 非常特别的出现在 \eqref{eq:reduced-form} 的 exponent 里了, 想什么呢.
当 $p \ge 7$ 时, 左边被 $(p-1)^2$ 整除, 右边好像只被 $(p-1)$ 整除,
我天真的以为自己已经找到答案了, 可惜仔细验算了一下发现右边实际也被 $(p-1)^2$ 整除:

设 $c = p - 1$ (这是一个偶数), 则

$$
\text{RHS} = (c+1)^c - 1 = c\cdot \binom{c}{1} + c^2\binom{c}{2} + \cdots.
$$

由此便知, 在 $c \ne 2$ 的情形下, $\text{RHS}$ 恰好被 $c^2$ 整除.
通过进一步地推理, 我还发现 $c$ 一定形如 $2\cdot q$, 这里 $q$ 是一个素数.
这是因为 $c = 2q$ 是 $\text{LHS}$ 唯一可能只被 $c^2$ 整除而不被 $c^3$ 整除的情形.

推理出 $c = 2q$ 后, 我又一时间没了头绪, 很难再得到任何 non-trivial 的进展.
突然之间我的脑海中冒出一个想法: 有没有可能计算素因子 $2$ 的个数就可以了呢?

先计算左边, 我们有 $v_2(b!) \ge \frac{p-1}{2} + \lfloor\frac{p-1}{4}\rfloor$.
右边的话, 利用 LTE 引理我们有

$$
v_2(p^{p-1} - 1) = v_2(p - 1) + v_2(p + 1) + v_2(p - 1) - 1.
$$

注意 $\gcd(p-1,p+1) = 2$, 所以 $v_2(p-1), v_2(p+1)$ 其中之一必定是 $1$.
于是 $v_2(p^{p-1} - 1) = 2v_2(p-1)$ or $v_2(p+1) + 1$.

当 $p \ge 9$ 的时候, 容易验证

$$
\log_2(p+1) + 1 < \frac{p-1}{2} + \left\lfloor\frac{p-1}{4}\right\rfloor,
$$

再利用 $v_2(p+1) \le \log_2(p+1)$ 便可引出矛盾.

当 $p \ge 7$ 时, $2 < \frac{p-1}{2} < p-3 < p-1$, 并且这四个数都出现在了 $(p-1)!$ 里.
于是我们有

$$
\begin{aligned}
v_2(b!) &\ge v_2((p-1)!) \\\\
        &\ge v_2(p-1) + v_2(2) + v_2\left(\frac{p-1}{2}\right) + v_2(p-3) \\\
        &= 2v_2(p-1) + v_2(p-3) \\\
        &> 2v_2(p-1).
\end{aligned}
$$

柳暗花明, $p$ 的取值只可能是 $3, 5, 7$. 容易验证只有 $\boxed{(3, 4, 3)}$ 是解.
