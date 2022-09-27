---
title: "Left (Right) Exact Functor Definition"
date: 2022-09-09
comment: /blog/2022/09-09/
authors:
  - complex2liu
categories:
  - category
draft: false
---

Let $\mathbf{P}$ and $\mathbf{Q}$ be abelian categories.
Let $F: \mathbf{P} \to \mathbf{Q}$ be additive functor
(so that, in particular $F(0) = 0$).

{{<math-env type = "Proposition">}}
The following are equivalent
<ol>
<li>
If $0 \to A \to B \to C \to 0$ is exact,
then $0 \to F(A) \to F(B) \to F(C)$ is exact.
</li>
<li>
If $0 \to A \to B \to C$ is exact,
then $0 \to F(A) \to F(B) \to F(C)$ is exact.
</li>
</ol>
{{</math-env>}}

{{<proof>}}
(2) $\Rightarrow$ (1) 是显然的. 下面我们说明 (1) $\Rightarrow$ (2).

<p></p>

关键在于注意到 $F$ preserve monomorphism:
if $i: A \to B$ is a monomorphism, then
$0 \to A \xrightarrow{i} B \to \operatorname{coker}(i) \to 0$ is exact,
hence $0 \to F(A) \to F(B) \to F(\operatorname{coker}(i))$ is exact.
In particular, $F(i)$ is a monomorphism.

<p></p>

Now if $0 \to A \to B \xrightarrow{f} C$ is exact, then
$0 \to A \to B \to \operatorname{im}(f) \to 0$ is exact.
Hence by assumption $0 \to F(A) \to F(B) \to F(\operatorname{im}(f))$ is exact.
Since $F(\operatorname{im}(f)) \to F(C)$ is a monomorphism,
it follows that $0 \to F(A) \to F(B) \to F(C)$ is exact.
{{</proof>}}

如果 $F$ 满足任意一条性质, 我们称 $F$ is a left exact functor.
同理可以定理 right exact functor (对偶的, 它总是 preserve epimorphism).
对于反变函子, 我们依然是要求最后得到的序列
$0 \to F(C) \to F(B) \to F(A)$ 是从左边开始的.
