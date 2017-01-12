# A Library of Bilevel Test Problems

While the literature on the application of Bilevel Programming Problems (BPP) is extensive and diverse, there have been limited efforts in establishing a systematic test library for the evaluation of the bilevel algorithms and their implementations. Thus, the goal of this library is to present an actively growing collection of bilevel test problems gathered from the various sources devoted to the bilevel programming.

# Classification of the BPP problems

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:

## [Linear outer-Linear inner bilevel optimization problems](LP-LP-problems)

 - **linear outer-quadratic inner** bilevel optimization problems ([LP-QP](https://github.com/basblsolver/test-problems/tree/master/LP-QP))
 - **quadratic outer-quadratic inner** bilevel optimization problems ([QP-QP](https://github.com/basblsolver/test-problems/tree/master/QP-QP))
 - **linear outer-nonlinear inner** bilevel optimization problems ([LP-NLP](https://github.com/basblsolver/test-problems/tree/master/LP-NLP))
 - **nonlinear outer-nonlinear inner** bilevel optimization problems ([NLP-NLP](https://github.com/basblsolver/test-problems/tree/master/NLP-NLP))

This library (repository) provides:
* Description of bilevel problems in `AMPL` format, compatible with our [`BASBL`](http://basblsolver.github.io/home/ "Bilevel Solver") solver.

For more details on these problems see [wiki-page](https://github.com/basblsolver/test-problems/wiki):

- [Linear-Linear bilevel problems](https://github.com/basblsolver/test-problems/wiki/LP-LP-problems)
- [Linear-Quadratic bilevel problems](https://github.com/basblsolver/test-problems/wiki/LP-QP-problems)
- [Linear-NonLinear bilevel problems](https://github.com/basblsolver/test-problems/wiki/LP-NLP-problems)
- [Quadratic-Quadratic bilevel problems](https://github.com/basblsolver/test-problems/wiki/QP-QP-problems)
- [NonLinear-NonLinear bilevel problems](https://github.com/basblsolver/test-problems/wiki/NLP-NLP-problems)

### Citation

If you use this library, please cite the following sources:

* Remigijus Paulavicius et al.. (2016). A library of nonconvex bilevel test problems with the corresponding AMPL input files. Zenodo. [![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.44997.svg)](http://dx.doi.org/10.5281/zenodo.44997)

```
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

Kindly note, that this is a growing collection of bilevel problems meant as a resource for researchers in the field, including problem statement, analysis, solution(s) and input file(s).
__We welcome contributions and corrections to this resource!__



