---
title: "Equivalent Definition for Irreducible space"
date: 2022-09-08
comment: /blog/2022/09-08/
authors:
  - complex2liu
categories:
  - topology
draft: false
---

{{<math-env type = "Proposition">}}
Let $X$ be a topological space. The following are equivalent
<ol>
<li>
If $X = Z_1 \cup Z_2$ with $Z_i$ closed, then either $X = Z_1$ or $X = Z_2$.
In other words, $X$ cannot be written as a finite union of
closed subsets strictly contained in $X$.
</li>
<li>
For every non-empty open sets $U$ and $V$,
there intersection $U \cap V \ne \varnothing$.
</li>
<li>
Any non-empty open subset is dense in $X$.
</li>
<li>
Any open subset is connected.
</li>
</ol>
$X$ is said to be <b>irreducible</b> if satisfying one of the condition above.
{{</math-env>}}

{{<proof>}}
(2) $\Rightarrow$ (3): If $U$ is an open subset which is not dense,
then one can take $y \in U^c$ and $V$ its open neighborhood
such that $U \cap V = \varnothing$.

<p></p>

(3) $\Rightarrow$ (2): Suppose $U \cap V = \varnothing$ for
some non-empty open subset $U$ and $V$.
Then for all $x \in V, x \notin \overline{U}$,
this shows that $U$ is not dense.

<p></p>

(2) $\Rightarrow$ (1): Suppose $X = Z_1 \cup Z_2$ with $Z_i$ closed,
then $\varnothing = X^c = Z_1^c \cap Z_2^c$.
Hence one of $Z_1^c$ and $Z_2^c$ is empty,
i.e. one of $Z_1$ and $Z_2$ has to be $X$.

<p></p>

(1) $\Rightarrow$ (4): Let $U$ be an open subset. If $U$ is not connected,
then $U = U_1 \sqcup U_2$ with $U_i$ open and strictly contained in $U$.
Now $X = U_1^c \cup U_2^c$.

<p></p>

(4) $\Rightarrow$ (2): Let $U, V$ be open subset. If $U \cap V = \varnothing$,
then $U \cup V$ is open and both $U$ and $V$ are open in $U \cup V$,
which means that $U \cup V$ is not connected.

<p></p>

Done.
{{</proof>}}

Note that an irreducible space is necessarily connected.
Any non-empty open subset of an irreducible is again irreducible and dense.
