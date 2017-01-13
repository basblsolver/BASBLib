While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse, there have been limited efforts in establishing a systematic test library for the evaluation of the bilevel algorithms and their implementations. Thus, the goal of this library is to present an actively growing collection of bilevel test problems gathered from the various sources devoted to the bilevel programming.

# Classification of the BPP problems

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:

## [Linear outer-Linear inner](LP-LP-problems) problems (LP-LP)

|       1-5        |         6-10       |            11-15    |
------------------ | ------------------ | ------------------- |
[mb_2007_01](LP-LP/mb_2007_01) | [mb_2007_02](LP-LP/mb_2007_02) | [as_2013_01](LP-LP/as_2013_01) |
[mb_2007_01](LP-LP/mb_2007_01) | [mb_2007_02](LP-LP/mb_2007_02) | [as_2013_01](LP-LP/as_2013_01) |
[mb_2007_01](LP-LP/mb_2007_01) | [mb_2007_02](LP-LP/mb_2007_02) | [as_2013_01](LP-LP/as_2013_01) |
[mb_2007_01](LP-LP/mb_2007_01) | [mb_2007_02](LP-LP/mb_2007_02) | [as_2013_01](LP-LP/as_2013_01) |
[mb_2007_01](LP-LP/mb_2007_01) | [mb_2007_02](LP-LP/mb_2007_02) | [as_2013_01](LP-LP/as_2013_01) |

 - [mb_2007_01](LP-LP/mb_2007_01)
 - [mb_2007_01](LP-LP/mb_2007_01)
 - [mb_2007_01](LP-LP/mb_2007_01)
 - [mb_2007_01](LP-LP/mb_2007_01)
 - [mb_2007_01](LP-LP/mb_2007_01)
 - [mb_2007_01](LP-LP/mb_2007_01)

## [Linear outer-Quadratic inner](LP-QP-problems) problems (LP-QP)

## [Quadratic outer-Quadratic inner](QP-QP-problems) problems (QP-QP)

## [Linear outer-Nonlinear inner](LP-NLP-problems) problems (LP-NLP)

## [Nonlinear outer-Nonlinear inner](NLP-NLP-problems) problems (NLP-NLP)

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



