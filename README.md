# BASBLib - A Library of Bilevel Test Problems

While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse, there have been limited efforts in establishing a comprehensive test library for the evaluation of bilevel algorithms and their implementations. Thus, the primary goal of this library is to present an __actively growing collection of bilevel test problems__ gathered from various sources devoted to bilevel programming.

## Problems classification

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:
 - **linear outer-linear inner** problems ([LP-LP](https://github.com/basblsolver/BASBLib/tree/master/LP-LP))
 - **linear outer-quadratic inner** problems ([LP-QP](https://github.com/basblsolver/BASBLib/tree/master/LP-QP))
 - **linear outer-nonlinear inner** problems ([LP-NLP](https://github.com/basblsolver/BASBLib/tree/master/LP-NLP))
 - **quadratic outer-quadratic inner** problems ([QP-QP](https://github.com/basblsolver/BASBLib/tree/master/QP-QP))
 - **quadratic outer-nonlinear inner** problems ([QP-NLP](https://github.com/basblsolver/BASBLib/tree/master/QP-NLP))
 - **nonlinear outer-nonlinear inner** problems ([NLP-NLP](https://github.com/basblsolver/BASBLib/tree/master/NLP-NLP))
 
## Goal of this repository
 
* This repository provides a description of bilevel test problems in the `AMPL` modelling format, compatible with [`BASBL solver`](http://basblsolver.github.io/home/ "Bilevel Solver").

## BASBLib home-page

For more details on bilevel test problems see [BASBLib home-page](http://basblsolver.github.io/BASBLib/).

## Contribution to the BASBLib

**We welcome contributions and corrections to this resource either way:**

 - **common way**    - send us your comments, corrections or suggestions by email: remigijus.paulavicius@imperial.ac.uk
 - **modern way** - [fork](https://help.github.com/articles/fork-a-repo/) github repository, add new information & correct existing, then create a [pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/) and we gratefully incorporate your contribution!
 
## Citation

If you use this library, please cite the following sources: 

* Remigijus Paulavicius, & Claire S. Adjiman. (2017). BASBLib - a library of bilevel test problems [Data set]. Zenodo. 
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.556423.svg)](https://doi.org/10.5281/zenodo.556423)

## Acknowledgment

```
We gratefully acknowledge funding from the EPSRC through a Leadership Fellowship [EP/J003840/1]
```



