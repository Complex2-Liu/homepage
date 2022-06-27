---
title: "Basic Topology Review (Locally Compact Hausdorff)"
date: 2022-02-22
comment: /blog/2022/02-22/
authors:
  - complex2liu
categories:
  - topology
draft: false
---

我们称一个拓扑空间 $X$ **regular**, 如果我们能用开集来区分点和闭集.

我们称 $X$ **normal**, 如果我们能用开集来区分不相交的两个闭集.

我们先来回忆一下 regular space 和 normal space 的等价定义.

{{<math-env type="Lemma" counter="true" label="regular-space-equivalent-defin">}}
$X$ is regular if and only if for all $x \in U$ with $U$ open,
there exists $V$ open such that $x \in V \subseteq \overline{V} \subseteq U$.
{{</math-env>}}

{{<proof>}}
Assume $X$ is regular. Choose $A, B$ open such that $x \in A, U^c \subseteq B$
and $A \cap B = \varnothing$. Then $\overline{A} \cap B = \varnothing$,
so $x \in A \subseteq \overline{A} \subseteq U$.

<p>
</p>

Conversely, let $x \notin A \subset X$ with $A$ closed,
we can choose $V$ open such that $x \in V \subseteq \overline{V} \subseteq A^c$.
Then $V$ and $X - \overline{V}$ separate $x$ and $A$.
{{</proof>}}

{{<math-env type="Lemma" counter="true">}}
$X$ is normal if and only if for all $A \subseteq E \subset X$ with
$A$ closed and $E$ open, there exists $V$ open such that
$A \subseteq V \subseteq \overline{V} \subseteq E$.
{{</math-env>}}

{{<proof>}}
Assume $X$ is normal. Choose $C, D$ open such that $A \subseteq C, E^c \subseteq D$
and $C \cap D = \varnothing$. Then $\overline{C} \cap D = \varnothing$,
so $A \subseteq C \subseteq \overline{C} \subseteq E$.

<p>
</p>

Conversely, let $A, B$ be disjoint closed set,
we can choose $V$ open such that $A \subseteq V \subseteq \overline{V} \subseteq B^c$.
Then $V$ and $X - \overline{V}$ separate $A$ and $B$.
{{</proof>}}

证明中都用到了下述关键性质:

{{<math-env type="Lemma">}}
If $A, B$ are open sets such that $A \cap B$ is empty,
then $\overline{A} \cap B$ is again empty.
{{</math-env>}}

> 真是惭愧, 仔细回想, 这两个结论老夫当初学拓扑的时候肯定学过,
> 可以说是 regular 和 normal space 的等价定义,
> 然而不是今天刚好 review, 我真是几乎忘掉了.

$X$ is said to be **locally (path) connected** if every point
admits a neighbourhood basis consisting entirely of open, (path) connected sets.
但是非常无语的是, $X$ is said to be **locally compact** if
every point $x$ of $X$ has a compact neighbourhood.
有没有人可以告诉我, 为什么 locally compact 的定义要求存在一个紧致邻域就够了,
但是 locally connected 就要求存在一组邻域基呢?

不过幸运的是, 当 $X$ 是 Hausdorff 的时候, 前面所说的定义就是一致的了.

{{<math-env type="Proposition" counter="true" label="locally-compact-hausdorff-has-local-base">}}
Assume $X$ is Hausdorff, the following are equivalent:
<ol>
<li>
every point of $X$ has a compact neighbourhood.
</li>
<li>
every point of $X$ has a local base of compact neighbourhoods.
</li>
</ol>
{{</math-env>}}

{{<proof>}}
回忆下述性质:
<ul>
<li>
Hausdorff 空间中的紧集是闭集.
See {{<cite target="stackexchange-83355" label="1">}} or
{{<cite target="topgrpds" label="2" text="3.5.6 (Corollary 4)">}}.
<li>
The subspace of Hausdorff space is agian Hausdorff.
</li>
<li>
Compact Hausdorff implies normal (a fortiori, regular).
I belive the best proof is {{<cite target="topgrpds" label="2" text="3.5.5 and 3.5.6 (Corollary 3)">}}.
</li>
</ul>

Assume (1) holds, let $x \in U \subseteq K \subseteq X$ with $K$ compact and $U$ open.
One can wlog assume $X$ is compact (otherwise replace $X$ with $K$) and thus regular.
Now $U$ is an open neighbourhood of $x$,
we must find a compact neighbourhood of $x$ contained in $U$.
Since $X$ is regular, the result then follows by
{{<cref target="regular-space-equivalent-defin" label="Lemma 1">}}.
{{</proof>}}

{{<math-env type="Proposition" counter="true">}}
Let $X$ be a locally compact Hausdorff space.
For any basis $\mathcal{B}$, the family
$$
\mathcal{B}_c = \{U \in \mathcal{B}: \overline{U} \text{ is compact}\}
$$
is also a basis.
{{</math-env>}}

{{<proof>}}
We only need to show that for all $x \in V$ with $V$ open,
there is a $U \in \mathcal{B}_c$ such that $x \in U \subseteq V$.
By {{<cref target="locally-compact-hausdorff-has-local-base" label="Proposition 3">}},
there is a compact neighbourhood $K_x$ of $x$ contained in $V$.
Since $\mathcal{B}$ is a basis,
there exists $U \in \mathcal{B}$ such that $x \in U \subseteq \mathrm{Int}(K_x)$.
Note that $K_x$ is closed, so $\overline{U} \subseteq K_x$.
Now $K_x$ is compact Hausdorff and $\overline{U}$ is its closed subset,
so $\overline{U}$ is compact, i.e. $U \in \mathcal{B}_c$.
{{</proof>}}

{{<math-env type="Corollary" counter="true">}}
Let $X$ be a topological space which is locally compact,
Hausdorff and second countable. Then one can wlog choose its countable basis
consisting of open sets with compact closures.
{{</math-env>}}

最后我们再给出一个定理, 该定理说明了任意流形都是仿紧的,
我们会在单位分解定理的证明中使用这个结论.

{{<math-env counter="true">}}
Let $X$ as above. Then $X$ is paracompact (仿紧).
In fact, each open cover has a countable,
locally finite refinement consisting of open sets with compact closure.
{{</math-env>}}

{{<proof>}}
See {{<cite target="paracompact" label="3" text="Lemma 1.9">}}.

<p>
</p>

最后构造出的 refinement 是 locally finite 是因为当 $i - j \ge 3$ 的时候,
$$
G_{i+1} - \overline{G_{i-2}} \cap G_{j+1} - \overline{G_{j-2}} = \varnothing.
$$
{{</proof>}}

{{< references >}}
{{< bibitem "stackexchange-83355" >}}
{{< url "https://math.stackexchange.com/questions/83355" >}}
{{< /bibitem >}}
{{< bibitem "topgrpds" >}}
Ronald Brown.
<i>
Topology and Groupoids.
</i>
{{< url "http://groupoids.org.uk/pdffiles/topgrpds-e.pdf" >}}
{{< /bibitem >}}
{{< bibitem "paracompact" >}}
Frank W. Warner.
<i>
Foundations of Differentiable Manifolds and Lie Groups.
</i>
GTM 94.
{{< /references >}}
