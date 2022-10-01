---
title: "根的拉回就是拉回的根"
date: 2022-10-01
comment: /blog/2022/10-01/
authors:
  - complex2liu
categories:
  - commutative algebra
draft: false
---

今天我遇到了这样一个问题.

Let $f: A \to B$ be a ring map, 于是我们可以把 $B$ 中任意理想
$I$ 拉回成 $A$ 中的理想 $I \cap A$.
熟知的是素理想的拉回一定是素理想, 准素理想的拉回还是准素理想.

问题来了, 设 $I$ 是 $B$ 的一个 $\mathfrak{p}$-准素理想,
那么 $(I \cap A)$ 一定是 $A$ 的 $(\mathfrak{p} \cap A)$-准素理想吗?
也就是说
<span style = "color: var(--color-fg-red);">
$\sqrt{f^{-1}(I)}$ 一定等于 $f^{-1}(\sqrt{I})$ 吗,
</span>
根和拉回是否可交换?

我们有

$$
\sqrt{I} = \bigcap_{\mathfrak{p}\supseteq I} \mathfrak{p}
$$

是所有包含 $I$ 的素理想的交, 但是拉回之后得到的 $f^{-1}(\mathfrak{p})$
并不一定能 cover 所有包含 $f^{-1}(I)$ 的素理想,
所以 $\sqrt{f^{-1}(I)} \subseteq f^{-1}(\sqrt{I})$.
因为教科书上只告诉我们 primary 拉回还是 primary, 没说 radical is also preserved,
我一度怀疑 $(I \cap A)$ 的 radical 有可能是一个比 $\mathfrak{p} \cap A$ 要小的素理想.

从素理想的角度去考虑, 我们只得到了一个 $\subseteq$ 关系.
事实上我们应该直接从定义出发.
我们有 $a \in f^{-1}(\sqrt{I})$ 当且仅当 $f(a) \in \sqrt{I}$
当且仅当 $f(a^m) = f(a)^m \in I$ for some $m > 0$
当且仅当 $a^m \in f^{-1}(I)$ for some $m > 0$
当且仅当 $a \in \sqrt{f^{-1}(I)}$.

拉回确实和 radical 可交换, 所以 $(I \cap A)$ 确实是 $(\mathfrak{p}\cap A)$-primary ideal.
