# BASBLib - A Library of Bilevel Test Problems

## Goal of this repository
 
While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse (see
e.g., [[1][1], [6][6], [7][7], [11][11]] and references therein), there have been limited efforts in establishing a comprehensive test library for the evaluation of bilevel algorithms and their implementations. While there exist generators of bilevel test problems [[2][2], [3][3], [4][4]], they are limited to linear and quadratic problems. There already exist several collections of bilevel test problems, however, again, limited to special subclasses:

 - Chapter 9 in [[9]] contains linear and quadratic problems (__19 problems in total__)
 - The GAMS EMP Library [[8]] contains mainly linear and quadratic problems (__33 problems in total__)
 - The test set included with BIPA [[5]] contains convex inner problems (__22 problems in total__)
 - A test set for bilevel problems [[10]] containing either nonconvex inner problems or problems with a structure that causes convergence issues for algorithms (__36 problems in total__)
 - MIPLIB [[12]] containing bilevel problems with only binary variables (__57 problems in total__)
 - Bilevel optimization problem library, version 0.1 [[13]] containing binary bilevel problems (__315 problems in total__)

## BASBLib resources

Thus, with the introduction of `BASBLib`, we present an actively growing online collection of general bilevel test problems, gathered from the various sources and devoted to bilevel programming. The library is designed as an open resource to which other researchers in the bilevel programming community can easily contribute. An in-depth description of BASBLib is provided in an online resource: http://basblsolver.github.io/BASBLib/ . It includes problem statements, a geometrical analysis of the problems, the best-known solutions, comments on inaccuracies in the literature, sources where the problem was used, and AMPL input files in the [`BASBL solver's format`](http://basblsolver.github.io/home/ "Bilevel Solver"). 

## Problems classification

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:
 - **linear outer-linear inner** problems ([LP-LP](https://github.com/basblsolver/BASBLib/tree/master/LP-LP))
 - **linear outer-quadratic inner** problems ([LP-QP](https://github.com/basblsolver/BASBLib/tree/master/LP-QP))
 - **linear outer-nonlinear inner** problems ([LP-NLP](https://github.com/basblsolver/BASBLib/tree/master/LP-NLP))
 - **quadratic outer-quadratic inner** problems ([QP-QP](https://github.com/basblsolver/BASBLib/tree/master/QP-QP))
 - **quadratic outer-nonlinear inner** problems ([QP-NLP](https://github.com/basblsolver/BASBLib/tree/master/QP-NLP))
 - **nonlinear outer-nonlinear inner** problems ([NLP-NLP](https://github.com/basblsolver/BASBLib/tree/master/NLP-NLP))


## Contribution to the BASBLib

**We welcome contributions and corrections to this resource either way:**

 - **common way**    - send us your comments, corrections or suggestions by email: remigijus.paulavicius@imperial.ac.uk
 - **modern way** - [fork](https://help.github.com/articles/fork-a-repo/) github repository, add new information & correct existing, then create a [pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/) and we gratefully incorporate your contribution!
 
## Citation

If you use **BASBLib**, please cite the following source: 

* Remigijus Paulavicius, & Claire S. Adjiman. (2017). BASBLib - a library of bilevel test problems, v2.2 [Data set]. Zenodo. 
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.897966.svg)](https://doi.org/10.5281/zenodo.897966)

### BibTeX Export

```
@misc{remigijus_paulavicius_2017_897966,
  author       = {Remigijus Paulavicius and
                  Claire S. Adjiman},
  title        = {BASBLib - a library of bilevel test problems},
  month        = sep,
  year         = 2017,
  doi          = {10.5281/zenodo.897966},
  url          = {https://doi.org/10.5281/zenodo.897966}
}
```

## References

1. [J. F. Bard, Practical Bilevel Optimization, vol. 30 of Nonconvex Optimization and Its Applications, Springer US, 1998](https://doi.org/10.1007/978-1-4757-2836-1)

2. [P. H. Calamai and L. N. Vicente, Generating linear and linear-quadratic bilevel programming problems, SIAM Journal on Scientific Computing, 14 (1993), pp. 770–782](https://doi.org/10.1137/0914049)

3. [P. H. Calamai and L. N. Vicente, Generating quadratic bilevel programming test problems, ACM Transactions on Mathematical Software (TOMS), 20 (1994), pp. 103–119](https://doi.org/10.1145/174603.174411)

4. [P. H. Calamai, L. N. Vicente, and J. J. Júdice, A new technique for generating quadratic programming test problems, Mathematical Programming, 61 (1993), pp. 215–231](https://doi.org/10.1007/BF01582148)

5. [B. Colson, BIPA (BIlevel Programming with Approximation Methods)(software guide and test problems), Cahiers du GERAD, (2002)](https://www.gerad.ca/en/papers/G-2002-37/view)

6. [S. Dempe, Foundations of Bilevel Programming, vol. 61 of Nonconvex Optimization and Its Applications, Kluwer Academic Publishers, Boston, 2002](https://doi.org/10.1007/b101970).

7. [S. Dempe, V. Kalashnikov, G. A. Pérez-Valdés, and N. Kalashnykova, Bilevel programming problems, Energy Systems, Springer Berlin Heidelberg, Berlin, Heidelberg, 2015](https://doi.org/10.1007/978-3-662-45827-3)

8. [EMPlib Library. https://www.gams.com/emplib/libhtml/alfindx.htm. Accessed: 2017-04-21](https://www.gams.com/emplib/libhtml/alfindx.htm)

9. [C. A. Floudas, P. M. Pardalos, C. S. Adjiman, W. R. Esposito, Z. H. Gümüs, S. T. Harding, J. L. Klepeis, C. A. Meyer, and C. A. Schweiger, Handbook of test problems in local and global optimization, Springer Science & Business Media, 1999](https://doi.org/10.1007/978-1-4757-3040-1)

10. [A. Mitsos and P. I. Barton, A test set for bilevel programs. http://www.researchgate.net/publication/228455291, 2007. Last updated September 19, 2007](http://www.researchgate.net/publication/228455291)

11. [K. Shimizu, Y. Ishizuka, and J. F. Bard, Nondifferentiable and two-level mathematical programming, vol. 102, Kluwer Academic Publishers, Boston, 1997](https://doi.org/10.1016/S0377-2217(97)00228-2)

12. [M. Fischetti, I. Ljubić, M. Monaci, and M. Sinnl, Intersection Cuts for Bilevel Optimization, Springer International Publishing, 2016, pp. 77–88](https://doi.org/10.1007/978-3-319-33461-5_7)

13. [T. Ralphs and E. Adams, Bilevel instance library, 2016](http://coral.ise.lehigh.edu/data-sets/bilevel-instances/)

## Acknowledgment

```
We gratefully acknowledge funding from the EPSRC through a Leadership Fellowship [EP/J003840/1]
```


[1]: https://doi.org/10.1007/978-1-4757-2836-1
[2]: https://doi.org/10.1137/0914049
[3]: https://doi.org/10.1145/174603.174411
[4]: https://doi.org/10.1007/BF01582148
[5]: https://www.gerad.ca/en/papers/G-2002-37/view
[6]: https://doi.org/10.1007/b101970
[7]: https://doi.org/10.1007/978-3-662-45827-3
[8]: https://www.gams.com/emplib/libhtml/alfindx.htm
[9]: https://doi.org/10.1007/978-1-4757-3040-1
[10]: http://www.researchgate.net/publication/228455291
[11]: https://doi.org/10.1016/S0377-2217(97)00228-2
[12]: https://doi.org/10.1007/978-3-319-33461-5_7
[13]: http://coral.ise.lehigh.edu/data-sets/bilevel-instances/
