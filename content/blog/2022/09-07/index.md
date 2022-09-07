---
title: "Avoidance Lemma for Vector Spaces"
date: 2022-09-07
comment: /blog/2022/09-07/
authors:
  - complex2liu
categories:
  - algebra
draft: false
---

交换代数里有一个关于素理想覆盖的引理 (Prime avoidance),
事实上, 这个引理还有一个线性空间的版本:

{{<math-env type = "Proposition" counter = "true">}}
Let $F$ be an infinite field. Then any $F$-vector space $V$
cannot be covered by a finite union of its proper subspace.
{{</math-env>}}

我们证明一个更强的结论:

{{<math-env type = "Proposition" counter = "true">}}
If $U_1, \cdots, U_n$ are proper subspace of a vector space
$V$ over $F$ with $|F| \ge n$.
Then $V \ne U_1 \cup \cdots \cup U_n$.
{{</math-env>}}

{{<proof>}}
Let $U = U_1 \cup \cdots \cup U_n$ and assume that it is irredundant,
i.e. no $U_i$ lies in the union of the others.
Choose $v \notin U_1, u \in U_1, u \notin U_i$ for all $i > 1$.
We consider the "generic" line $L = v + uF$.

<p></p>

We claim that $L \cap U_1 = \varnothing$. If not, then we have
$u \in U_1, v + cu \in U_1$, so $v = (v + cu) - cu \in U_1$, contradiction.

<p></p>

We claim that $|L \cap U_i| \le 1$ for all $i > 1$.
If $v + cu, v + du \in U_i$, then so is difference $(c - d)u$, thus $c = d$.

<p></p>

Therefore $|L \cap U| \le n - 1 < |F| = |L|$.
This means that the line $L$ has at least one point not in $U$.
{{</proof>}}

One important application of this avoidance lemma is the well-known
**primitive element theorem** for finite field extension,
see {{<url "https://stacks.math.columbia.edu/tag/09HZ">}}.
