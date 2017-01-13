# Motivation of the library

While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse, there have been limited efforts in establishing a systematic test library for the evaluation of the bilevel algorithms and their implementations.
Thus, the primary goal of this library is to present an __actively growing collection of bilevel test problems__ gathered from the various sources devoted to the bilevel programming.

Briefly, this library provides:

 - Problem statement
 - Geometrical analysis for many of these problems
 - The best know solutions and comments about literature inaccuracies
 - Sources where each of these problems was used
 - [AMPL input files](https://github.com/basblsolver/test-problems) in the format, compatible with [`BASBL`](http://basblsolver.github.io/home/ "Bilevel Solver") solver.
 - Finally, convenient way to use it and contribute to it.

__We welcome contributions and corrections to this resource!__

# Classification of the BPP problems

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:

## [Linear-Linear](LP-LP-problems) problems (LP-LP)

Select problem for more information

| 1-5 instances                | 6-10 instances                     | 11-15 instances                |
| :--------------------------- | :--------------------------------- | :----------------------------- |
[mb_2007_01](LP-LP/mb_2007_01) | [sib_1997_02](LP-LP/sib_1997_02)   | [bf_1982_02](LP-LP/bf_1982_02) |
[mb_2007_02](LP-LP/mb_2007_02) | [vfip_1996_01](LP-LP/vfip_1996_01) | [bf_1982_01](LP-LP/bf_1982_01) |
[as_2013_01](LP-LP/as_2013_01) | [aw_1990_01](LP-LP/aw_1990_01)     | [s_1989_01](LP-LP/s_1989_01)   |
[cw_1988_01](LP-LP/cw_1988_01) | [b_1991_01](LP-LP/b_1991_01)       | [ct_1982_01](LP-LP/ct_1982_01) |
[lh_1994_01](LP-LP/lh_1994_01) | [cw_1990_01](LP-LP/cw_1990_01)     |                                |

## [Linear-Quadratic](LP-QP-problems) problems (LP-QP)

| 1-5 instances                  | 6-10 instances                     |
| :---------------------------   | :--------------------------------- |
[mb_2006_01](LP-QP/mb_2006_01)   | [as_1984_01](LP-QP/as_1984_01)     |
[mb_2007_04](LP-QP/mb_2007_04)   |                                    |
[mb_2007_03](LP-QP/mb_2007_03)   |                                    |
[b_1991_02](LP-QP/b_1991_02)     |                                    |
[nwj_2016_01](LP-QP/nwj_2016_01) |                                    |

## [Quadratic-Quadratic](QP-QP-problems) problems (QP-QP)

## [Linear-Nonlinear](LP-NLP-problems) problems (LP-NLP)

## [Nonlinear-Nonlinear](NLP-NLP-problems) problems (NLP-NLP)

## Citation

If you use this library, please cite the following sources:

* Remigijus Paulavicius et al.. (2016). A library of nonconvex bilevel test problems with the corresponding AMPL input files. Zenodo. [![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.44997.svg)](http://dx.doi.org/10.5281/zenodo.44997)

```latex
@misc{remigijus_paulavicius_2016_44997,
  author       = {Remigijus Paulavicius and Polyxeni-M. Kleniati and Claire S. Adjiman},
  title        = {A library of nonconvex bilevel test problems with the corresponding AMPL input files},
  month        = jan,
  year         = 2016,
  doi          = {10.5281/zenodo.44997},
  url          = {http://dx.doi.org/10.5281/zenodo.44997}
}
```



