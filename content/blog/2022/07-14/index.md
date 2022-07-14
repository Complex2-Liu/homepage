---
title: "IMO 2022 Problem 2"
date: 2022-07-14
comment: /blog/2022/07-14/
authors:
  - complex2liu
categories:
  - IMO
  - math olympiad
draft: false
---

{{< math-env-alt type = "Problem" >}}
Let $\mathbb{R}^+$ denote the set of positive real numbers.
Find all functions $f: \mathbb{R}^+ \to \mathbb{R}^+$ such that
for each $x \in \mathbb{R}^+$, there is exactly one $y \in \mathbb{R}^+$ satisfying
$$
xf(y) + yf(x) \le 2.
$$
{{< /math-env-alt >}}

理想情况下 $2xf(x) = 2$ $\implies$ $f(x) = \frac{1}{x}$, 猜测这个就是解.

记 $F(x, y) = xf(y) + yf(x)$. 由 $x,y$ 的对称性, 这样的 $y$ 也唯一对应一个 $x$,
于是 $g:\mathbb{R}^+ \to \mathbb{R}^+, x \mapsto y$ 是一个 involution,
特别的是一个**双射**.

{{< math-env type = "Claim" >}}
$f(x)$ 单调减.
{{< /math-env >}}

{{< proof >}}
固定 $x$, $F(x,y)$ 在 $y = g(x)$ 时取得最小值 $\le 2$.
于是当 $y < g(x)$ 时, $f(y) > f(g(x))$.
这是因为否则的话, 我们有

$$
F(x, y) = xf(y) + yf(x) < xf(g(x)) + g(x)f(x) \le 2.
$$

与唯一性矛盾. 又因为 $g$ 是双射, 所以 $g(x)$ 可以取到任意的正实数.
{{< /proof >}}

{{< math-env type = "Claim" >}}
$g(x) \equiv x$.
{{< /math-env >}}

{{< proof >}}
设 $y_0 := g(x_0) \ne x_0$ 不是 $g$ 的不动点. 则我们有
$2x_0f(x_0) > 2$ $\implies$ $f(x_0) > \frac{1}{x_0}$, 同理 $f(y_0) > \frac{1}{y_0}$.
不妨设 $x_0 < y_0$, 我们有
$$
2 \ge x_0f(y_0) + y_0f(x_0) > \frac{x_0}{y_0} + \frac{y_0}{x_0} > 2.
$$
这里最后一个 $>$ 号是由 AM-GM 不等式以及 $x_0 \ne y_0$ 得到.{{< fn "1" >}}
{{< /proof >}}

也就是说, 对任意 $x \in \mathbb{R}^+$, 我们有 $xf(x) \le 1$ $\implies$ $f(x) \le \frac{1}{x}$.
特别的, 对任意 $a \in \mathbb{R}^+$, 我们有 $xf(ax) \le \frac{1}{a}$.

假若存在某个 $x_0$ 使得 $f(x_0) = \frac{1}{x_0} - \varepsilon$ for some $\varepsilon > 0$,
我们希望能引出矛盾.

$$
\begin{aligned}
F\left(x_0, \frac{n+1}{n}x_0\right) &= x_0f\left(\frac{n+1}{n}x_0\right) + \frac{n+1}{n}x_0f(x_0) \\\
                                    &\le \frac{n}{n+1} + \frac{n+1}{n} - \frac{n+1}{n}x_0\varepsilon \\\
                                    &= 2 + \frac{1}{n(n+1)} - \frac{(n+1)^2x_0\varepsilon}{n(n+1)}
\end{aligned}
$$

注意这里 $x_0$ 是固定的, $\varepsilon$ 也是固定的,
所以 $(n+1)^2x_0\varepsilon > 1$ for sufficiently large $n \in \mathbb{N}$
$\implies F(x_0, \frac{n+1}{n}x_0) < 2$, 与唯一性矛盾.

{{< figure src="./draft-1.jpg" alt="draft-1" >}}
手稿
{{< /figure >}}

{{< figure src="./draft-2.jpg" alt="draft-2" >}}
手稿
{{< /figure >}}

{{< fnol >}}
{{< fnli "1" >}}
想想题目里那个 $2$ 是怎么来的, 事实上看到题目里的那个 $2$,
我第二时间就猜到了估计是从 AM-GM 不等式蹦出来的 $2$.
这一步里凑出来一个 AM-GM 不等式, 我就知道我所作的所有推理应该都很合理.
{{< /fnli >}}
{{< /fnol >}}
