---
title: "IMO 2022 Problem 1 and 4"
date: 2022-07-20
lastmod: 2022-07-27
comment: /blog/2022/07-20/
authors:
  - complex2liu
categories:
  - IMO
  - math olympiad
draft: false
---

{{< math-env-alt type = "Problem" >}}
Let $ABCDE$ be a convex pentagon such that $BC = DE$.
Assume that there is a point $T$ inside $ABCDE$ with
$TB = TD, TC = TE$ and $\angle ABT = \angle TEA$.
Let line $AB$ intersect lines $CD$ and $CT$
at points $P$ and $Q$, respectively.
Assume that the points $P, B, A, Q$ occur on their line in that order.
Let line $AE$ intersect lines $CD$ and $DT$
at points $R$ and $S$, respectively.
Assume that the points $R, E, A, S$ occur on their line in that order.
Prove that the points $P, S, Q, R$ lie on a circle.
{{< /math-env-alt >}}

{{< box color="magenta" >}}
题目虽然很长, 但难度 so easy, 即使是初中水平无任何竞赛训练估计都能做得出来.
这是今年 IMO <b>唯一</b>的一题几何, 难度还这么水,
看起来今年对擅长几何的选手并不友好.
{{< /box >}}

{{< figure src = "./fig.png" alt = "figure" >}}
<a href="./fig.asy">source</a>
{{< /figure >}}

一眼看出 $\triangle TBC$ $\cong$ $\triangle TDE$,
结合 $\angle ABT = \angle TEA$ 知 $\angle TSR = \angle TQP$,
故 $S, U, V, Q$ 四点共圆.

Now it suffices to show $UV \parallel PR$ (say by Reim's theorem).
Note that

$$
\angle BTD = \angle BTC + \angle CTD = \angle ETD + \angle CTD = \angle ETC,
$$

It follows that $\triangle BTU$ $\sim$ $\triangle ETV$ and hence

$$
\frac{TU}{TV} = \frac{TB}{TE} = \frac{TD}{TC}.
$$

Done.

{{< math-env-alt type = "Problem" >}}
he Bank of Oslo issues two types of coin:
aluminium (denoted $A$) and bronze (denoted $B$).
Marianne has $n$ aluminium coins and $n$ bronze coins,
arranged in a row in some arbitrary initial order.
A <b>chain</b> is any subsequence of consecutive coins of the same type.
Given a fixed positive integer $k\le 2n$,
Marianne repeatedly performs the following operation:
she identifies the longest chain containing the $k^{\text{th}}$ coin from the left,
and moves all coins in that chain to the left end of the row.
For example, if $n = 4$ and $k = 4$, the process starting from the ordering $AABBBABA$ would be
$$
AAB\underline{B}BABA
\to
BBB\underline{A}AABA
\to
AAA\underline{B}BBBA
\to
BBB\underline{B}AAAA
\to
BBB\underline{B}AAAA
\to
\cdots.
$$
Find all pairs $(n, k)$ with $1 \le k \le 2n$ such that
for every initial ordering, at some moment during the process,
the leftmost $n$ coins will all be of the same type.
{{< /math-env-alt >}}

除非特别声明, 我们的视角永远是从左往右,
也就是说第 $k$ 枚硬币总是指从左数的第 $k$ 枚硬币.
不妨设第 $1$ 枚硬币是 $A$, 以该枚硬币为首构成一个 $A$-chain,
设其长度为 $a_1$. 则第 $a_1 + 1$ 枚硬币一定是 $B$,
以该枚硬币为首构成一个 $B$-chain, 设其长度为 $b_1$.
以此类推我们可以得到 $a_i, b_i$ 其中 $i \le n$.
注意这里 $a_j$ 可以是 $0$, 但如果是这样, then $a_i$ is also $0$ for all $i \ge j$,
the same is true of $b_j$. 无论如何我们总是有

\begin{equation}
\label{eq:sum-is-n}
\sum_{i=1}^n a_i = \sum_{i=1}^n b_i = n.
\end{equation}

Assemble the data, we obtain a $2\times n$ data matrix

<div style="overflow-x: auto;">
\begin{equation}
\label{eq:data-matrix}
M_0 =
\begin{pmatrix}
a_1 & a_2 & a_3 & \cdots & a_{n-1} & a_n \\\
b_1 & b_2 & b_3 & \cdots & b_{n-1} & b_n
\end{pmatrix}.
\end{equation}
</div>

对于矩阵 $M_0$, 我们来定义两个量 $u_0, v_0$:
这里 $u_0$ 是满足 $a_i = 0$ for all $i \ge u_0$ 的最小正整数,
$v_0$ 的定义同理.

{{< math-env type = "Claim" >}}
When $n \le k \le \lceil \frac{3n}{2} \rceil$, it works.
{{< /math-env >}}

{{< proof >}}
If $a_1 = n$, then we are done. Now assume $a_1 < n$.
如果第 $k$ 枚硬币是 $A$, 位于 $a_\ell$ 对应的那个 $A$-chain 中,
then after one operation, the data matrix \eqref{eq:data-matrix} is changed to

<div style="overflow-x: auto;">
\begin{equation}
\label{eq:operation-type-a}
M_1 =
\begin{pmatrix}
a_1 + a_\ell & \cdots & a_{\ell-2} & a_{\ell-1} & a_{\ell+1} & a_{\ell+2} & \cdots \\
b_1 & \cdots & b_{\ell-2} & b_{\ell-1} + b_{\ell} & b_{\ell+1} & b_{\ell+2} & \cdots 
\end{pmatrix}
\end{equation}
</div>

<p style="margin: 0;">
如果第 $k$ 枚硬币是 $B$, 位于 $b_\ell$ 对应的那个 $B$-chain 中,
then after one operation, the data matrix \eqref{eq:data-matrix} is changed to
</p>

<div style="overflow-x: auto;">
\begin{equation}
\label{eq:operation-type-b}
M_1 = 
\begin{pmatrix}
b_\ell & b_1 & b_2 & \cdots & b_{\ell-2} & b_{\ell-1} & b_{\ell+1} & b_{\ell+2} & \cdots \\\
a_1 & a_2 & a_3 & \cdots & a_{\ell-1} & a_{\ell} + a_{\ell+1} & a_{\ell+2} & a_{\ell+3} & \cdots
\end{pmatrix}
\end{equation}
</div>

<p style="margin-top: 0;">
对于 \eqref{eq:operation-type-a}, 因为 $a_1 < n$, 所以必有 $\ell \ge 2$,
从而此时 $u_1 = u_0 - 1, v_1 \le v_0$ (这里有可能出现 $b_\ell = 0$ 的情况),
即 $u_1 + v_1 \le u_0 + v_0 - 1$.
</p>

对于 \eqref{eq:operation-type-b}, $u_1 = v_0, v_1 \le u_0$, 等号什么时候成立?
等号成立当且仅当 $a_{\ell + 1} = 0$, 即 $b_\ell$ 对应的那个 $B$-chain 恰好就是最后一个 chain.
我们不希望这样的情况发生, 我们希望 $u_1 + v_1$ 严格地比 $u_0 + v_0$ 小.
反设结论不成立, 即 $u_i + v_i = u_{i+1} + v_{i+1}$ for all $i \in \mathbb{N}$,
那么每一次挑选出来的那个第 $k$ 枚硬币都恰好位于最后一个 chain.
因为 $k \le \lceil \frac{3n}{2} \rceil$, 这意味着最后一个 chain 的长度
$\ge \lfloor \frac{n}{2} \rfloor + 1$.
注意到在反证的前提下, 每一个 chain (无论是 $A$-chain 还是 $B$-chain) 都能成为最后一个 chain,
这告诉我们只要 $a_i \ne 0$, 那么 $a_i \ge \lfloor \frac{n}{2} \rfloor + 1$, the same is true of $b_i$.
这与 \eqref{eq:sum-is-n} 矛盾.
<p>
</p>

若干步之后我们有 $u_N = 2, v_N = 2$. Done.
{{< /proof >}}

{{< math-env type = "Claim" >}}
$1 \le k \le n - 1$ are invalid.
{{< /math-env >}}

{{< proof >}}
我们考虑如下形式的初始状态:

<ul>
<li>
前 $k$ 枚硬币都是 $A$.
</li>

<li>
第 $k$ 枚硬币是 $B$, 第 $k+1$ 枚至第 $n+1$ 枚硬币都是 $A$.
</li>

<li>
剩下的硬币都是 $B$.
</li>
</ul>

Under this situation, the sequence formed by coins $A$ and $B$ is invariant.
{{< /proof >}}

{{< math-env type = "Claim" >}}
$ \lceil \frac{3n}{2} \rceil + 1 \le k \le 2n$ are invalid.
{{< /math-env >}}

{{< proof >}}
我们考虑如下形式的初始状态:

<ul>
<li>
前 $\lceil \frac{n}{2} \rceil$ 枚硬币都是 $A$.
</li>
<li>
之后 $\lceil \frac{n}{2} \rceil$ 枚硬币都是 $B$.
</li>
<li>
之后 $\lfloor \frac{n}{2} \rfloor$ 枚硬币都是 $A$.
</li>
<li>
之后 $\lfloor \frac{n}{2} \rfloor$ 枚硬币都是 $B$.
</li>
</ul>

Under this situation, the sequence formed by coins $A$ and $B$
is permuted after each operation.
{{< /proof >}}
