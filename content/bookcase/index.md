---
title: "藏书阁"
date: 2022-03-22
lastmod: 2022-03-22
comment: /bookcase/
authors:
  - complex2liu
draft: false
---

This page archives my ebooks collection. A book is tagged with

<dl>
<dt>Official Source</dt>
<dd>
means that it is downloaded from the official, e.g.
<a href="https://link.springer.com/book/10.1007/978-1-4757-3849-0">Springer</a>
provides a pdf version of famous GTM 52.
</dd>

<dt>Bookmark</dt>
<dd>
means that the pdf has bookmark, so that we can jump to certain page quickly.
</dd>

<dt>Logical Page Label</dt>
<dd>
Usually the real page 1 of a book doesn’t coincide with
the page 1 of its pdf version. For example, GTM 52 has 15 pages front matter,
so the real page 1 of this book is actually page 16 of the pdf.
The ideal case is, the page 16 is labeld with arabic 1 and
the first 15 pages are labeled with others
(e.g. C1 for page 1, and lower case roman for page 2 to page 14 in GTM 52).
As such, when we give a instruction
<code>go to page 1</code> to our favourite pdf reader,
we jump to the real page 1, not the page 1 of front matter.
</dd>

<dt>Editable Text</dt>
<dd>
means that this document is not a scanned version,
so that we can select or copy text.
We can enhance a scanned pdf by a process called
<a href="https://en.wikipedia.org/wiki/Optical_character_recognition">OCR</a>.
</dd>
</dl>

I personally use a open-sourced command line tool called
[cpdf](https://community.coherentpdf.com/)
to provide a pdf with bookmark and logical page label.
See [this post](/blog/2022/01-12/) for a real application of
how `cpdf` works on GTM 211.

{{<table class="full-width">}}
Book                                                                                                            | Offical Source | Bookmark | Logical Page Label | Editable Text |
:---------------------------------------------------------------------------------------------------------------|:---------------|:---------|:-------------------|:--------------|
Rodney Y. Sharp - Steps in Commutative Algebra - Second Edition.pdf                                             | ✅             | ✅       | ✅                 | ✅            |
H. Matsumura - Commutative Ring Theory.pdf                                                                      | ✅             | ✅       | ✅                 | ✅            |
David Eisenbud - Commutative Algebra with a View Toward Algebraic Geometry - GTM 150.pdf                        | ✅             | ✅       | ✅                 | ✅            |
Serge Lang - Complex Analysis - Fourth Edition - GTM 103.pdf                                                    | ✅             | ✅       | ✅                 | ✅            |
Serge Lang - Algebra - Revised Third Edition Volume 1 - GTM 211.pdf                                             | ✅             | ✅       | ✅                 | ✅            |
Frank W. Warner - Foundations of Differentiable Manifolds and Lie Groups - GTM 94.pdf                           | ✅             | ✅       | ✅                 | ✅            |
Sergei I. Gelfand, Yuri I. Manin - Methods of Homological Algebra - Second Edition.pdf                          | ✅             | ✅       | ✅                 | ✅            |
Charles A. Weibel - An Introduction to Homological Algebra - Cambridge Studies in Advanced Mathematics (38).pdf | ✅             | ✅       | ✅                 | ✅            |
William M. Boothby - An Introduction to Differentiable Manifolds and Riemannian Geometry - Second Edition.pdf   | ✅             | ✅       | ✅                 | ✅            |
[Ronald Brown - Topology and Groupoids - Third Edition.pdf](http://groupoids.org.uk/pdffiles/topgrpds-e.pdf)    | ✅             | ✅       | ✅                 | ✅            |
M. A. Armstrong - Basic Topology - Undergraduate Texts in Mathematics (GTM).pdf                                 | ✅             | ✅       | ✅                 | ✅            |
Robin Hartshorne - Algebraic Geometry - GTM 52.pdf                                                              | ✅             | ✅       | ✅                 | ✅            |
{{</table>}}
