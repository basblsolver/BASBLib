# Motivation for the library

While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse, there have been limited efforts in establishing a comprehensive test library for the evaluation of bilevel algorithms and their implementations. Thus, the primary goal of this library is to present an __actively growing collection of bilevel test problems__ gathered from various sources devoted to bilevel programming.

**For each problem, this library provides:**

 - A problem statement
 - Where feasible, a geometrical analysis of the problem
 - The best know solutions and comments about literature inaccuracies
 - Sources where the problem was used
 - [AMPL input files](https://github.com/basblsolver/test-problems) in the format, compatible with [`BASBL`](http://basblsolver.github.io/home/ "Bilevel Solver") solver.
 - Finally, convenient way to use it and contribute to it.

**We welcome contributions and corrections to this resource either way:**

 - **old way**    - send us your comments, corrections or suggestions by email: remigijus.paulavicius@imperial.ac.uk
 - **modern way** - [fork](https://help.github.com/articles/fork-a-repo/) github repository, add new information & correct existing, then create a [pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/) and we hapilly accept your contribution!

__There is also an overview of the problems contained within the library__

# Classification of BPP problems

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:

## [Linear-Linear](LP-LP-problems) problems (LP-LP)

Select problem for more information

|                                |                                    |                                |                                |                                |
| :----------------------------- | :--------------------------------- | :----------------------------- | :----------------------------- | :----------------------------- |
[mb_2007_01](LP-LP/mb_2007_01)   | [mb_2007_02](LP-LP/mb_2007_02)     | [as_2013_01](LP-LP/as_2013_01) | [cw_1988_01](LP-LP/cw_1988_01) | [lh_1994_01](LP-LP/lh_1994_01) |
[sib_1997_02](LP-LP/sib_1997_02) | [b_1984_01](LP-LP/b_1984_01)       | [aw_1990_01](LP-LP/aw_1990_01) | [b_1991_01](LP-LP/b_1991_01)   | [cw_1990_01](LP-LP/cw_1990_01) |
[bf_1982_02](LP-LP/bf_1982_02)   | [bf_1982_01](LP-LP/bf_1982_01)     | [s_1989_01](LP-LP/s_1989_01)   | [ct_1982_01](LP-LP/ct_1982_01) |


## [Linear-Quadratic](LP-QP-problems) problems (LP-QP)

Select problem for more information

| 1-5 instances                  | 6-10 instances                     |
| :---------------------------   | :--------------------------------- |
[mb_2006_01](LP-QP/mb_2006_01)   | [as_1984_01](LP-QP/as_1984_01)     |
[mb_2007_04](LP-QP/mb_2007_04)   |                                    |
[mb_2007_03](LP-QP/mb_2007_03)   |                                    |
[b_1991_02](LP-QP/b_1991_02)     |                                    |
[nwj_2016_01](LP-QP/nwj_2016_01) |                                    |

## [Linear-Nonlinear](LP-NLP-problems) problems (LP-NLP)

Select problem for more information

| 1-5 instances                 | 6-10 instances                     | 11-15 instances                  |
| :---------------------------- | :--------------------------------- | :------------------------------- |
[mb_2007_05](LP-NLP/mb_2007_05) | [mb_2007_15](LP-NLP/mb_2007_15)    | [gf_2001_01](LP-NLP/gf_2001_01)  |
[mb_2007_06](LP-NLP/mb_2007_06) | [mb_2007_16](LP-NLP/mb_2007_16)    | [dd_2012_02](LP-NLP/dd_2012_02)  |
[mb_2007_10](LP-NLP/mb_2007_10) | [ka_2014_01](LP-NLP/ka_2014_01)    | [cg_1999_01](LP-NLP/cg_1999_01)  |
[mb_2007_11](LP-NLP/mb_2007_11) | [mb_2007_09](LP-NLP/mb_2007_09)    |                                  |
[mb_2007_13](LP-NLP/mb_2007_13) | [fz_1998_01](LP-NLP/fz_1998_01)    |                                  |

## [Quadratic-Quadratic](QP-QP-problems) problems (QP-QP)

Select problem for more information

| 1-5 instances                  | 6-10 instances                     | 11-15 instances                |
| :----------------------------- | :--------------------------------- | :----------------------------- |
[y_1996_02](QP-QP/y_1996_02)     | [b_1988_01](QP-QP/b_1988_01)       | [b_1998_03](QP-QP/b_1998_03)   |
[d_1992_01](QP-QP/d_1992_01)     | [sa_1981_01](QP-QP/sa_1981_01)     | [d_1978_01](QP-QP/d_1978_01)   |
[d_2000_01](QP-QP/d_2000_01)     | [sib_1997_01](QP-QP/sib_1997_01)   | [fl_1995_01](QP-QP/fl_1995_01) |
[cw_1990_02](QP-QP/cw_1990_02)   | [sc_1998_01](QP-QP/sc_1998_01)     | [sa_1981_02](QP-QP/sa_1981_02) |
[tmh_2007_01](QP-QP/tmh_2007_01) | [b_1998_02](QP-QP/b_1998_02)       | [as_1981_01](QP-QP/as_1981_01) |

## [Nonlinear-Nonlinear](NLP-NLP-problems) problems (NLP-NLP)

Select problem for more information

| 1-5 instances                    | 6-10 instances                      | 11-15 instances                   | 16-20 instances                   | 21-25 instances                   | 26-30 instances                    |
| :------------------------------  | :---------------------------------- | :-------------------------------- | :-------------------------------- | :-------------------------------- | :--------------------------------- |
[b_1998_04](NLP-NLP/b_1998_04)     | [mb_2007_17](NLP-NLP/mb_2007_17)    | [mb_2007_23](NLP-NLP/mb_2007_23)  |[c_2002_04](NLP-NLP/c_2002_04)     |[b_1984_02](NLP-NLP/b_1984_02)     | [nwj_2016_05](NLP-NLP/nwj_2016_05) |
[b_1998_05](NLP-NLP/b_1998_05)     | [mb_2007_18](NLP-NLP/mb_2007_18)    | [mb_2007_22](NLP-NLP/mb_2007_22)  |[mb_2007_08](NLP-NLP/mb_2007_08)   |[mb_2007_24](NLP-NLP/mb_2007_24)   | [ka_2014_02](NLP-NLP/ka_2014_02)   |
[lmp_1987_01](NLP-NLP/lmp_1987_01) | [mb_2007_19](NLP-NLP/mb_2007_19)    | [dd_2012_01](NLP-NLP/dd_2012_01)  |[c_2002_02](NLP-NLP/c_2002_02)     |[nwj_2016_02](NLP-NLP/nwj_2016_02) |                                    |
[mb_2007_12](NLP-NLP/mb_2007_12)   | [mb_2007_20](NLP-NLP/mb_2007_20)    | [c_2002_01](NLP-NLP/c_2002_01)    |[c_2002_05](NLP-NLP/c_2002_05)     |[nwj_2016_04](NLP-NLP/nwj_2016_04) |                                    |
[mb_2007_14](NLP-NLP/mb_2007_14)   | [mb_2007_21](NLP-NLP/mb_2007_21)    | [c_2002_03](NLP-NLP/c_2002_03)    |[b_1998_07](NLP-NLP/b_1998_07)     |[nwj_2016_03](NLP-NLP/nwj_2016_03) |                                    |

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

## Acknowledgment

We gratefully acknowledge funding from the EPSRC through a Leadership Fellowship **[EP/J003840/1]**


