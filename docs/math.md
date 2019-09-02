---
layout: page
title: Math
---

## Beautiful math in all browsers

[MathJax](https://www.mathjax.org/)  is an open-source JavaScript display engine for LaTeX, MathML, and
AsciiMath notation that works in all modern browsers.  It was designed with
the goal of consolidating the recent advances in web technologies into a
single, definitive, math-on-the-web platform supporting the major browsers
and operating systems.  It requires no setup on the part of the user (no
plugins to download or software to install), so the page author can write
web documents that include mathematics and be confident that users will be
able to view it naturally and easily.  Simply include MathJax and some
mathematics in a web page, and MathJax does the rest.

Some of the main features of MathJax include:

- High-quality display of LaTeX, MathML, and AsciiMath notation in HTML pages

- Supported in most browsers with no plug-ins, extra fonts, or special
  setup for the reader

- Easy for authors, flexible for publishers, extensible for developers

- Supports math accessibility, cut-and-paste interoperability, and other
  advanced functionality

- Powerful API for integration with other web applications

See <http://www.mathjax.org/> for additional details.

## Community

The main MathJax website is <http://www.mathjax.org>, and it includes
announcements and other important information.  MathJax is maintained and
distributed on GitHub at <http://github.com/mathjax/MathJax>.  A user forum
for asking questions and getting assistance is hosted at Google, and the
bug tracker is hosted at GitHub:

Bug tracker:         <https://github.com/mathjax/MathJax/issues>  
MathJax-Users Group: <http://groups.google.com/group/mathjax-users>

Before reporting a bug, please check that it has not already been reported.
Also, please use the bug tracker for reporting bugs rather than the help forum.

## Using Math Formula in Markdown Page

1. Example One: Construct the formula with following markdown.

   `$ a^2 + b^2 = c^2 $`

    Then you will get the formula as follows.

    $
    a^2 + b^2 = c^2
    $

2. Example Two: Construct the formula with following markdown.
   
   `$ x = {-b \pm \sqrt{b^2-4ac} \over 2a} $`

    Then you will get the formula as follows.

    $
    x = {-b \pm \sqrt{b^2-4ac} \over 2a}
    $

3. Example Three: Construct the formula with following markdown.

   ``
    $
    \begin{eqnarray}
    x' &=& &x \sin\phi &+& z \cos\phi \\
    z' &=& - &x \cos\phi &+& z \sin\phi \\
    \end{eqnarray}
    $
   ``

    Then you will get the formula as follows.

    $
    \begin{eqnarray}
    x' &=& &x \sin\phi &+& z \cos\phi \\
    z' &=& - &x \cos\phi &+& z \sin\phi \\
    \end{eqnarray}
    $



## MathJax Cheat Sheet
 
| Title                   | Formula                                                                      | Markdown                                                                 |
| ----------------------- |:----------------------------------------------------------------------------:|:------------------------------------------------------------------------ |
| Variables               | $ x_1, y_1, z_{3,4} $                                                        | x_1, y_1, z_{3,4}                                                        |
| Square                  | $ a^2, x^y, 2^{n-1} $                                                        | a^2, x^y, 2^{n-1}                                                        |
| Square Root             | $ \sqrt{9}, \sqrt{x}, \sqrt[n]{x} $                                          | \sqrt{9}, \sqrt{x}, \sqrt[n]{x}                                          |
| Logarithm               | $ \log{}x, \log_{2}x  $                                                      | \log{}x, \log_{2}x                                                       |
| Fraction                | $ \frac{1}{2}, \left(-\frac{1}{2}\right)^n  $                                | \frac{1}{2}, \left(-\frac{1}{2}\right)^n                                 |
| Infinity                | $ \infty $                                                                   | \infty                                                                   |
| Absolute Value          | $ \vert{x}\vert, \vert\frac{x}{2}\vert, \lfloor{x}\rfloor, \lceil{x}\rceil $ | \vert{x}\vert, \vert\frac{x}{2}\vert, \lfloor{x}\rfloor, \lceil{x}\rceil |
| Arithmetic Operation    | $ 2\times 3, 6\div 3 $                                                       | 2\times 3, 6\div 3                                                       |
| Factorial               | $ n! $                                                                       | n!                                                                       |
| Trigonometric Functions | $ \sin\theta, \cos\theta, \tan\theta $                                       | \sin\theta, \cos\theta, \tan\theta                                       |
| Greater or Less         | $ a\gt b, a\geq b, a\lt b, a\leq b $                                         | a\gt b, a\geq b, a\lt b, a\leq b                                         |
| Equation                | $ a=b, a\neq b, a\approx b $                                                 | a=b, a\neq b, a\approx b                                                 |
| Times Dot               | $ a\cdot b=ab $                                                              | a\cdot b=ab                                                              |
| Divide Fraction         | $ a/b=\frac{a}{b} $                                                          | a/b=\frac{a}{b}                                                          |
| Trinomial Equation      | $ a^2 + b^2 = c^2 $                                                          | a^2 + b^2 = c^2                                                          |
| Matrix Parentheses      | $$ \begin{pmatrix} a & b \\ c & d \end{pmatrix} $$                           | \begin{pmatrix} a & b \\ c & d \end{pmatrix}                             |
| Matrix Brackets         | $$ \begin{bmatrix} a & b \\ c & d \end{bmatrix} $$                           | \begin{bmatrix} a & b \\ c & d \end{bmatrix}                             |
| Matrix Equation         | $$ \begin{vmatrix} a & b \\ c & d \end{vmatrix}=ad-bc $$                     | \begin{vmatrix} a & b \\ c & d \end{vmatrix}=ad-bc                       |
| Set                     | $ x\in A, A\ni x, x\notin A $                                                | x\in A, A\ni x, x\notin A                                                |
| Subset                  | $ A\subset B, A\subseteq B, A \not \subset B $                               | A\subset B, A\subseteq B, A \not \subset B                               |
| Intersection & Union    | $ A\cap B, A\cup B, \overline{A} $                                           | A\cap B, A\cup B, \overline{A}                                           |
| Quadratic formula       | $ x = {-b \pm \sqrt{b^2-4ac} \over 2a} $                                     | x = {-b \pm \sqrt{b^2-4ac} \over 2a}                                     |
| Binomial                | $ \sqrt{3x-1}+(1+x)^2 $                                                      | \sqrt{3x-1}+(1+x)^2                                                      |
| Differentiation         | $ f', f^{(n)}, D_x f $                                                       | f', f^{(n)}, D_x f                                                       |
| Integral                | $ \int_0^1 f(x) dx $                                                         | \int_0^1 f(x) dx                                                         |
| Integral Large          | $ \displaystyle \int_{-\infty }^{\infty}f(x)dx $                             | \displaystyle \int_{-\infty }^{\infty}f(x)dx                             |
| Max Sample              | $ \max(a,b)=\begin{cases}a&(a\geqq b)\\b&(a\lt b)\end{cases} $               | \max(a,b)=\begin{cases}a&(a\geqq b)\\b&(a\lt b)\end{cases}               |

## Big O and related notations

| Title            | Notation                 | Markdown         |
| ---------------- |:------------------------:|:-----------------|
| Big O [micron]   | $ \mathcal{O} $ or $ O $ | \mathcal{O} or O |
| Big Omega        | $ \Omega $               | \Omega           |
| Big Theta        | $ \Theta $               | \Theta           |
| Small O [micron] | $ o $                    | o                |
| Small Omega      | $ \omega $               | \omega           |
| On the order of  | $ \sim $                 | \sim             |

## Common Time and Space Complexity

| Title            | Running Time             | Markdown         |
| ---------------- |:------------------------:|:-----------------|
| Constant Time    | $ O(1) $                 | O(1)             |
| Logarithmic Time | $ O(\log{}n) $           | O(\log{}n)       |
| Linear Time      | $ O(n) $                 | O(n)             |
| Quasilinear Time | $ O(n\log{}n) $          | O(n\log{}n)      |
| Quadratic Time   | $ O(n^2) $               | O(n^2)           |
| Cubic Time       | $ O(n^3) $               | O(n^3)           |
| Factorial Time   | $ O(n!) $                | O(n!)            |