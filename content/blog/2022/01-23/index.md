---
title: "Galois Connection"
date: 2022-01-23
comment: /blog/2022/01-23/
authors:
  - complex2liu
categories:
  - algebra
draft: false
---

Let $\mathcal{F}$ and $\mathcal{G}$ be two partially ordered sets.
Let $f: \mathcal{F} \to \mathcal{G}$ and $g: \mathcal{G} \to \mathcal{F}$ be maps.

{{<math-env-alt text="Galois Connection">}}
We say $f$ and $g$ establish a <strong>Galois connection</strong> between
the two sets if the following take place:
<ol>
<li>
$g(f(H)) \supseteq H$ and $f(g(K))\supseteq K$ for all
$H \in \mathcal{F}$ and $K \in \mathcal{G}$.
</li>
<li>
If $H_1 \subseteq H_2$, then $f(H_1) \supseteq f(H_2)$.
</li>
<li>
If $K_1 \subseteq K_2$, then $g(K_1) \supseteq g(K_2)$.
</li>
</ol>
{{</math-env-alt>}}

Galois connection arise frequently in mathematics.
For example, let $F \subseteq E$ be field extension,
then the map between the set of intermediate fields between $F$ and $E$,
and the set of subgroups of $\mathrm{Gal}(E/F)$,
establish a galois connection. This is the well-known **galois theory**
(c.f. {{<cite target="algebra" label="1" text="page 275">}}).

Another typical example is the map between the set of ideals of $k[T_1,\cdots,T_n]$
and the set of subsets of affine space of dimension $n$
(or set of subsets of the spectrum of $k[T_1,\cdots,T_n]$).
This is the well-known **Hilbert's Nullstellensatz**.

{{<math-env type="Proposition" text="Bijection induced from galois connection">}}
$f$ and $g$ define inverse bijections between the subsets
$\mathcal{F}_0 \subseteq \mathcal{F}$ and $\mathcal{G}_0 \subseteq \mathcal{G}$
defined by
$$
\mathcal{F}_0 := \{g(K): K \in \mathcal{G}\}
\qquad
\mathcal{G}_0 := \{f(H): H \in \mathcal{F}\}.
$$
Also,
$$
\mathcal{F}_0 = \{H \in \mathcal{F}: g(f(H)) = H\}
\qquad
\mathcal{G}_0 = \{K \in \mathcal{G}: f(g(K)) = K\}.
$$
{{</math-env>}}

{{<proof>}}
Clearly $f(\mathcal{F}_0) \subseteq f(\mathcal{F}) = \mathcal{G}_0$,
so $f$ defines a map $\mathcal{F}_0 \to \mathcal{G}_0$,
the same is true of $g$.

<p>
Let $H \in \mathcal{F}_0$, on the one hand, we have
$g(f(H)) \supseteq H$ by definition. On the other hand,
we can write $H = g(K)$ for some $K \in \mathcal{G}$ since $H \in \mathcal{F}_0$,
and so $f(H) = f(g(K)) \supseteq K$, which implies that $g(f(H)) \subseteq g(K) = H$.
Hence $g\circ f = \mathrm{id}$ on $\mathcal{F}_0$.
We can similarly show that $f \circ g = \mathrm{id}$ on $\mathcal{G}_0$.
</p>

If $H \in \mathcal{F}_0$, we have already proved that $g(f(H)) = H$.
Conversely, if $H \in \mathcal{F}$ such that $H = g(f(H))$,
then $H = g(K) \in \mathcal{F}_0$ where $K = f(H) \in \mathcal{G}$.
{{</proof>}}

The elements of $\mathcal{F}_0$ and $\mathcal{G}_0$ are called
the **closed elements** of $\mathcal{F}$ and $\mathcal{G}$.
The maps $g\circ f: \mathcal{F} \to \mathcal{F}$ and
$f\circ g: \mathcal{G} \to \mathcal{G}$ are the **closure operators**
on $\mathcal{F}$ and $\mathcal{G}$.

{{<references>}}
{{<bibitem "algebra">}}
I. Martin Isaacs.
<i>Algebra: A Graduate Course</i>.
GSM 100.
{{</bibitem>}}
{{</references>}}
