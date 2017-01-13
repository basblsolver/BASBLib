# Motivation of the library

While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse, there have been limited efforts in establishing a systematic test library for the evaluation of the bilevel algorithms and their implementations. Thus, the goal of this library is to present an actively growing collection of bilevel test problems gathered from the various sources devoted to the bilevel programming.

# Classification of the BPP problems

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:

## [Linear-Linear](LP-LP-problems) problems (LP-LP)

Select problem for more information

| 1-5 instances                | 6-10 instances                     | 11-14 instances                |
| :--------------------------- | :--------------------------------- | :----------------------------- |
[mb_2007_01](LP-LP/mb_2007_01) | [sib_1997_02](LP-LP/sib_1997_02)   | [bf_1982_02](LP-LP/bf_1982_02) |
[mb_2007_02](LP-LP/mb_2007_02) | [vfip_1996_01](LP-LP/vfip_1996_01) | [bf_1982_01](LP-LP/bf_1982_01) |
[as_2013_01](LP-LP/as_2013_01) | [aw_1990_01](LP-LP/aw_1990_01)     | [s_1989_01](LP-LP/s_1989_01)   |
[cw_1988_01](LP-LP/cw_1988_01) | [b_1991_01](LP-LP/b_1991_01)       | [ct_1982_01](LP-LP/ct_1982_01) |
[lh_1994_01](LP-LP/lh_1994_01) | [cw_1990_01](LP-LP/cw_1990_01)     |                                |

## [Linear-Quadratic](LP-QP-problems) problems (LP-QP)

## [Quadratic-Quadratic](QP-QP-problems) problems (QP-QP)

## [Linear-Nonlinear](LP-NLP-problems) problems (LP-NLP)

## [Nonlinear-Nonlinear](NLP-NLP-problems) problems (NLP-NLP)

This library (repository) provides:
* Description of bilevel problems in `AMPL` format, compatible with our [`BASBL`](http://basblsolver.github.io/home/ "Bilevel Solver") solver.

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

### Important Notice

Kindly note, that this is a growing collection of bilevel problems meant as a resource for researchers in the field, including problem statement, analysis, solution(s) and input file(s).__We welcome contributions and corrections to this resource!__



