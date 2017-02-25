# BASBLib - A Library of Bilevel Test Problems

While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse, there have been limited efforts in establishing a comprehensive test library for the evaluation of bilevel algorithms and their implementations. Thus, the primary goal of this library is to present an __actively growing collection of bilevel test problems__ gathered from various sources devoted to bilevel programming.

## Problems classification

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:
 - **linear-linear** problems ([LP-LP](https://github.com/basblsolver/BASBLib/tree/master/LP-LP))
 - **linear-quadratic** problems ([LP-QP](https://github.com/basblsolver/BASBLib/tree/master/LP-QP))
 - **linear-nonlinear** problems ([LP-NLP](https://github.com/basblsolver/BASBLib/tree/master/LP-NLP))
 - **quadratic-quadratic** problems ([QP-QP](https://github.com/basblsolver/BASBLib/tree/master/QP-QP))
 - **quadratic-nonlinear** problems ([QP-NLP](https://github.com/basblsolver/BASBLib/tree/master/QP-NLP))
 - **nonlinear-nonlinear** problems ([NLP-NLP](https://github.com/basblsolver/BASBLib/tree/master/NLP-NLP))
 
## Goal of this repository
 
* This repository provides a description of bilevel test problems in the `AMPL` modelling format, compatible with [`BASBL solver`](http://basblsolver.github.io/home/ "Bilevel Solver").

## BASBLib home-page

For more details on bilevel test problems see [BASBLib home-page](http://basblsolver.github.io/BASBLib/).

## Contribution to the BASBLib

**We welcome contributions and corrections to this resource either way:**

 - **common way**    - send us your comments, corrections or suggestions by email: remigijus.paulavicius@imperial.ac.uk
 - **modern way** - [fork](https://help.github.com/articles/fork-a-repo/) github repository, add new information & correct existing, then create a [pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/) and we thankfully incorporate your contribution!
 
 ## Citation

If you use this library, please cite the following sources: 

* Remigijus Paulavicius et al.. (2016). A library of nonconvex bilevel test problems with the corresponding AMPL input files. Zenodo. [![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.44997.svg)](http://dx.doi.org/10.5281/zenodo.44997)

```
@misc{remigijus_paulavicius_2016_44997,
  author       = {Remigijus Paulavicius and
                  Polyxeni-M. Kleniati and
                  Claire S. Adjiman},
  title        = {{A library of nonconvex bilevel test problems with 
                   the corresponding AMPL input files}},
  month        = jan,
  year         = 2016,
  doi          = {10.5281/zenodo.44997},
  url          = {http://dx.doi.org/10.5281/zenodo.44997}
}
```



