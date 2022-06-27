---
title: "Localization Commutes with Hom"
date: 2022-01-06
comment: /blog/2022/01-06/
authors:
  - complex2liu
categories:
  - commutative algebra
draft: false
---

这篇文章记录了我对 {{<cite target="GTM-150" label="2" text="prop 2.10">}} 的理解.

Let $R$ be a commutative ring with $1$.
Let $S$ be an $R$-algebra.
Let $M, N$ be $R$-module.
Let $L$ be $S$-module.
Since $S$ is an $R$-algebra, $L$ is naturally an $R$-moudle.

{{<math-env type="Lemma" label="lem-1" counter="true">}}
$S \otimes_R L \cong L$ via $1 \otimes l \longleftrightarrow l$.
{{</math-env>}}

{{<proof>}}
对于普通的 $R$-module $M$, 张量 $S$ 后得到的 $S$-moudle
$S \otimes_R M$ 的 module 结构为 $s \cdot (s_1 \otimes m) = (ss_1) \otimes m$.
但因为 $L$ 具有 $S$-module 结构, 所以
$$
(ss_1) \otimes m = s\cdot (s_1 \otimes m) =
(s_1 \otimes m)\cdot s = s_1 \otimes (m\cdot s)
$$
也就是说 $s$ 能兼容地作用在两个分量上.
{{</proof>}}

{{<math-env type="Proposition" counter="true">}}
There is a unique $S$-module homomorphism
$$
\alpha_{M}: S \otimes_{R} \mathrm{Hom}_R(M, N) \to
\mathrm{Hom}_S(S\otimes_R M, S\otimes_R N)
$$
that takes an element $1\otimes \varphi$ (belongs in LHS) to
$1 \otimes_R \varphi: S\otimes_R M \to S\otimes_R N$ (belongs in RHS).
{{</math-env>}}

这里实际上就是通过两种视角来解读 $1 \otimes \varphi$.
一方面, 它可以解读为两个元素的张量积 (belongs in LHS),
另一方面, 将 $1$ 理解成 $S$ 上的恒等映射, 则可以把
$1 \otimes \varphi$ 解读成两个映射的张量积.

{{<proof>}}
The map of <strong>sets</strong>
$\alpha': \mathrm{Hom}_R(M, N) \to \mathrm{Hom}_S(S\otimes M, S \otimes N)$
taking a homomorphism $\varphi$ to $1 \otimes \varphi$ is easily seen to be
a map of $R$-modules.
The result follows by applying {{<cref target="lem-1" label="Lemma 1">}}
with $L = \mathrm{Hom}_S(S\otimes M, S \otimes N)$.
{{</proof>}}

{{<math-env type="Proposition" counter="true">}}
If $S$ is flat over $R$ and $M$ is finitely presented, then $\alpha_M$ is an isomorphism.
{{</math-env>}}

{{<proof>}}
具体的细节去看书, 这里只简略说一下思路.

<p>
第一步, 我们先证明 $M = R$ 的情形.
这里用到了同构 $\mathrm{Hom}_R(R, N) = N$ and $S \otimes_R R = S$.
</p>

<p>
第二步, 我们证明 $M = \bigoplus_{i=1}^n R$ is a free module of finite rank 的情形.
这里利用了 $\mathrm{Hom}$ commutes with finite direct sum,
以及 $\otimes$ commutes with direct sum.
于是 $\alpha_M$ 实际上分解成直和 $\alpha_1 \oplus \cdots \oplus \alpha_n$,
然后每一个分量 $\alpha_i$ 都是 isomorphism.
</p>

<p>
第三步, 对于一般的 finitely presented 的 $M$. 它有一个 finite presentation
$$
F \xrightarrow{\varphi} G \xrightarrow{\psi} M \xrightarrow{} 0
$$
in which $F$ and $G$ are free module of finite rank.
We can first apply $\mathrm{Hom}(\bullet, N)$
then apply $S \otimes \bullet$ or, in an opposite order, apply $S \otimes \bullet$ first,
then $\mathrm{Hom}(\bullet, S\otimes N)$.
We therefore obtain a commutative diagram
</p>

{{<img src="./diag.svg" alt="commutative diagram" class="full-width">}}

in which the horizontal maps are induced from $\varphi$ and $\psi$.
The first row is exact because $S$ is flat over $R$.
The second row is exact because $\otimes$ and $\mathrm{Hom}$
are right and left exact functor.
The diagram commutes because of the definition of $\alpha_\bullet$.
We hence deduce from the well-known "five lemma" that $\alpha_M$ is isomorphism.
{{</proof>}}

{{<math-env type="Corollary" text="Localization commutes with Hom" counter="true">}}
If $M$ is finitely presented, then $\alpha_M$ provides a natural isomorphism
$$
S^{-1}\mathrm{Hom}_R(M, N) \cong \mathrm{Hom}_{S^{-1}R}(S^{-1}M, S^{-1}N).
$$
{{</math-env>}}

{{<proof>}}
$S^{-1}R$ obtained from localization is flat over $R$
(c.f. {{<cite target="atiyah" label="1" text="cor 3.6">}}).
Also $S^{-1}M \cong S^{-1}R \otimes_R M$
(c.f. {{<cite target="GTM-150" label="2" text="lem 2.4" >}}).
{{</proof>}}

In the cases of primary interest to us, $R$ is Noetherian.
In this case we have

{{<math-env type="Lemma" counter="true">}}
$M$ is finitely presented if and only if $M$ is finitely generated.
{{</math-env>}}

{{<proof>}}
If $\varphi: G \to M$ is a surjection from a finitely generated free module $G$,
then $\ker G$, as a submodule of $G$, is also finitely generated,
so $M$ has a finite presentation.
{{</proof>}}

{{< references >}}
{{< bibitem "atiyah" >}}
M.F.Atiyah and I.G.MacDonald.
<i>Introduction to Commutative Algebra</i>.
Addison-Wesley series in mathematics.
{{< /bibitem >}}
{{< bibitem "GTM-150" >}}
David Eisenbud.
<i>Commutative Algebra with a View Toward Algebraic Geometry</i>.
GTM 150.
{{< /bibitem >}}
{{< /references >}}
