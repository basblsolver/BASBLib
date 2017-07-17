# BASBLib - A Library of Bilevel Test Problems

## Goal of this repository
 
While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse (see
e.g., [1, 6, 7, 11] and references therein), there have been limited efforts in establishing a comprehensive test library for the evaluation of bilevel algorithms and their implementations. Thus, the primary goal of this library is to present an __actively growing collection of bilevel test problems__ gathered from various sources devoted to bilevel programming.

* This repository provides a description of bilevel test problems in the `AMPL` modelling format, compatible with [`BASBL solver`](http://basblsolver.github.io/home/ "Bilevel Solver").

## Problems classification

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:
 - **linear outer-linear inner** problems ([LP-LP](https://github.com/basblsolver/BASBLib/tree/master/LP-LP))
 - **linear outer-quadratic inner** problems ([LP-QP](https://github.com/basblsolver/BASBLib/tree/master/LP-QP))
 - **linear outer-nonlinear inner** problems ([LP-NLP](https://github.com/basblsolver/BASBLib/tree/master/LP-NLP))
 - **quadratic outer-quadratic inner** problems ([QP-QP](https://github.com/basblsolver/BASBLib/tree/master/QP-QP))
 - **quadratic outer-nonlinear inner** problems ([QP-NLP](https://github.com/basblsolver/BASBLib/tree/master/QP-NLP))
 - **nonlinear outer-nonlinear inner** problems ([NLP-NLP](https://github.com/basblsolver/BASBLib/tree/master/NLP-NLP))


## BASBLib home-page

For more details on bilevel test problems see [BASBLib home-page](http://basblsolver.github.io/BASBLib/).

## Contribution to the BASBLib

**We welcome contributions and corrections to this resource either way:**

 - **common way**    - send us your comments, corrections or suggestions by email: remigijus.paulavicius@imperial.ac.uk
 - **modern way** - [fork](https://help.github.com/articles/fork-a-repo/) github repository, add new information & correct existing, then create a [pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/) and we gratefully incorporate your contribution!
 
## Citation

If you use **BASBLib**, please cite the following source: 

* Remigijus Paulavicius, & Claire S. Adjiman. (2017). BASBLib - a library of bilevel test problems [Data set]. Zenodo. 
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.556423.svg)](https://doi.org/10.5281/zenodo.556423)

### BibTeX Export

```
@misc{remigijus_paulavicius_2017_556423,
  author       = {Remigijus Paulavicius and
                  Claire S. Adjiman},
  title        = {BASBLib - a library of bilevel test problems},
  month        = apr,
  year         = 2017,
  doi          = {10.5281/zenodo.556423},
  url          = {https://doi.org/10.5281/zenodo.556423}
}
```

## References

[1] [J. F. Bard, Practical Bilevel Optimization, vol. 30 of Nonconvex Optimization and Its Applications, Springer US, 1998, doi:10.1007/978-1-4757-2836-1](https://doi.org/10.1007/978-1-4757-2836-1).
[2] [P. H. Calamai and L. N. Vicente, Generating linear and linear-quadratic bilevel programming problems, SIAM Journal on Scientific Computing, 14 (1993), pp. 770–782, doi:10.1137/0914049](https://doi.org/10.1137/0914049).
P. H. Calamai and L. N. Vicente, Generating quadratic bilevel programming test problems, ACM Transactions on Mathematical Software (TOMS), 20 (1994), pp. 103–119, doi:10.1145/174603.174411.
P. H. Calamai, L. N. Vicente, and J. J. Júdice, A new technique for generating quadratic programming test problems, Mathematical Programming, 61 (1993), pp. 215–231, doi:10.1007/BF01582148.
B. Colson, BIPA (BIlevel Programming with Approximation Methods)(software guide and test problems), Cahiers du GERAD, (2002).
S. Dempe, Foundations of Bilevel Programming, vol. 61 of Nonconvex Optimization and Its Applications, Kluwer Academic Publishers, Boston, 2002, doi:10.1007/b101970.
S. Dempe, V. Kalashnikov, G. A. Pérez-Valdés, and N. Kalashnykova, Bilevel programming problems, Energy Systems, Springer Berlin Heidelberg, Berlin, Heidelberg, 2015, doi:10.1007/978-3-662-45827-3.
EMPlib Library. https://www.gams.com/emplib/libhtml/alfindx.htm. Accessed: 2017-04-21.
C. A. Floudas, P. M. Pardalos, C. S. Adjiman, W. R. Esposito, Z. H. Gümüs, S. T. Harding, J. L. Klepeis, C. A. Meyer, and C. A. Schweiger, Handbook of test problems in local and global optimization, Springer Science & Business Media, 1999, doi:10.1007/978-1-4757-3040-1.
A. Mitsos and P. I. Barton, A test set for bilevel programs. http://www.researchgate.net/publication/228455291, 2007. [Last updated September 19, 2007].
K. Shimizu, Y. Ishizuka, and J. F. Bard, Nondifferentiable and two-level mathematical programming, vol. 102, Kluwer Academic Publishers, Boston, 1997, doi:10.1016/S0377-2217(97)00228-2.

## Acknowledgment

```
We gratefully acknowledge funding from the EPSRC through a Leadership Fellowship [EP/J003840/1]
```



