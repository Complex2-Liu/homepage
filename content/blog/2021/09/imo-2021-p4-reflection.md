---
title: "七点共圆, IMO 2021 Problem 4 Reflection"
date: 2021-09-05
tags:
  - Math Olympiad
  - Olympiad Geometry
  - IMO-2021
draft: false
---

快乐的时间总是过的如此之快, 暑假眨眼之间就结束了.
在回去北京的飞机上, 想着已经很久没做过 IMO 的几何题了,
那就拿今年 IMO 的 Problem 4 来练练手吧.

<div class="prob">
Let $\Gamma$ be a circle with center $I$,
and $ABCD$ a convex quadrilateral such that each of the segments
$AB, BC, CD$ and $DA$ is tangent to $\Gamma$.
Let $\Omega$ be the circumcircle of the triangle $AIC$.
The extension of $BA$ beyond $A$ meets $\Omega$ at $X$,
and the extension of $BC$ beyond $C$ meets $\Omega$ at $Z$.
The extension of $AD$ and $CD$ beyond $D$ meet $\Omega$ at $Y$ and $T$, respectively.
Prove that
\begin{equation}
\label{eq1}
AD + DT + TX + XA = CD + DY + YZ + ZC.
\end{equation}
</div>

<img src="./fig-1.svg" alt="IMO 2021 Problem 4 figure" style="padding-top: 12px; padding-bottom: 12px;">

<div class="proof">
首先, 依据题意我们有 $T, X, A, C, Y, Z, I$ 七点共圆于 $\Omega$.

然后, 经过一些观察, 我们可以找到一对全等三角形 $\triangle IXT \cong \triangle IYZ$:
计算角度有 $\angle DAI = \angle BAI = \angle XTI \implies IY = IX$,
其中第一个等号是因为 $AI$ 是 $\angle BAD$ 的角平分线,
第二个等号是因为 $A, I, T, X$ 四点共圆.
同理可证 $IT = IZ$.

于是问题稍微化简成
\begin{equation}
\label{eq2}
XA + AD + DT = ZC + CI + IY.
\end{equation}

之后, 我们的思路是把这些边搬运一下, 分别拼成两条长边, 然后证明这两条长边相等.
注意 $AD$ 是 $XA, AD, DT$ 当中的中间那一条边, 它和剩余两条边都有公共端点,
所以我们需要把 $XA, DT$ 往直线 $AD$ 上搬运.
现在我们延长 $DA$ 至 $X'$, 使得 $AX = AX'$.
<b>注意</b>, 对称 (或者说 reflection) 这样的经典结构出现了:
因为 $AI$ 平分 $\angle BAD$, 所以 $AI$ 是 $XX'$ 的中垂线,
所以 $X'$ 根本就是 $X$ 关于 $AI$ 的 reflection.

同理作出点 $Z', T', Y'$, 于是问题进一步化简为证明 $X'T' = Z'Y'$.
走到这一步, 答案基本上已经呼之欲出了, 很自然就能知道我们下一步要证明 $\triangle X'IT' \cong \triangle Y'IZ'$,
因为两组边相等 $IX' = IY', IT' = IZ'$ 是由前面那个全等继承过来的,
thus, all left to show is $\angle X'IT' = \angle Z'IY'$.
剩下的事情, 基本上就是一些导角的工作了:
$\angle IX'A = \angle IXA = \angle IYD = \angle IY'D$,
同理可证 $\angle IT'Y = \angle IZ'C$.
</div>

<div class="rem">
刚开学, 有点懒, 之后这里补上一些 AOPS 上的东西.
</div>

这题并不是大水题, 根据 IMO 官方的[数据统计](https://www.imo-official.org/year_statistics.aspx?year=2021),
这题的全球平均得分为 3.817, 有 218 个参赛选手拿了 0 分
(与之对比, P1 只有 131 个参赛选手 0 分), 个人认为这题甚至可以作为 P2, P5 中较为简单那一题.

## 我的做题过程

- 看到题目, 我的直觉就告诉我, 这题肯定是要想办法把边搬运到一起, 暴算肯定是下策.
- (30-40 mins) 按照题目逐步耐心画图, 很快我就发现一对全等三角形: $\triangle IXT \cong \triangle IYZ$.
  稍微想一想就会意识到, 其实四项相加里面, 最难刻画的就是边 $XT$ 和 $YZ$.
  找到这组全等之后, 我们就把四项相加稍微化简了一点, 变成了三项相加.
  值得一提的是, 这一步虽然只是稍微化简了那么一点点, 但还是相当重要的,
  因为如果是四项相加的话, 搬运那些边远比三项相加难处理得多.

<img src="./fig-2.svg" alt="stupid to bash" style="display: block; margin: auto; max-width: 75%">

- (70+ mins) 然后我又分析了一下 $X, T, Y, Z$ 的构造, 它们都是直线和圆的交点,
  于是我想到能用圆幂定理去翻译 $AD, DT, CD, DY$ 这些边长:
  我们有 $(a+b+x)(a+b)=(b+c)(b+c+z), (a+d)y=(c+d)t$, 要证明 $x+a+t=c+y+z$.
  把 $t, x$ 分别用 $y, z$ 表示出来, 代进去暴力计算, 发现算不出来.
  然后我又自作聪明地发现可以设 $BX = x, BZ = z$,
  那第一条式子就会好看一点变成 $(a+b)x=(c+b)z$, 代进去暴力计算, 依然算不出来.
  算了一阵子, 我意识到自己似乎走错路了, 这两种暴力计算的方法本质是一样的啊,
  如果第一个算不出来, 那第二个肯定也算不出来.
  而且我也意识到了为什么这样子代进去暴力计算, 是证不出来的:
  因为 $a, b, c, d$ 并不是四个独立的参数, $ABCD$ 是圆外切四边形这一条件, 会让其中一个参数依赖于另外三个.

- (20+ mins) 我让自己冷静下来, 搞清楚自己在做什么, 不能漫无目的钻牛角尖, 去算一些没意义的东西.
  我让自己的思绪回到 \eqref{eq2}. 我要做的事应该是搬运边, 而不是去暴力算, 该怎么搬运呢?
  我注意到 $AD$ 是三项相加当中的中间边, 理论上应该往直线 $AD$ 上搬运:
  作出 $X'$, 我瞬间意识到 $X'$ 根本就是 $X$ 关于直线 $AI$ 的 reflection, 终点近在咫尺了!
  同理作出点 $T', Z', Y'$, 问题归结为证明 $X'IT' \cong Y'IZ'$, 剩下的工作就是 trivial 的了.

<img src="./manuscript.jpeg" alt="manuscript" style="max-height: 400px">
