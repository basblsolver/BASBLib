# Motivation for the library

While the literature on the application of Bilevel Programming Problems (**BPP**) is extensive and diverse, there have been limited efforts in establishing a comprehensive test library for the evaluation of bilevel algorithms and their implementations. Thus, the primary goal of this library is to present an __actively growing collection of bilevel test problems__ gathered from various sources devoted to bilevel programming.

## Features

**For each problem, this library provides:**

 - A problem statement
 - Where feasible, a geometrical analysis of the problem
 - The best know solutions and comments about literature inaccuracies
 - Sources where the problem was used
 - [AMPL input files](https://github.com/basblsolver/BASBLib) in the format, compatible with [`BASBL`](http://basblsolver.github.io/home/ "Bilevel Solver") solver.
 - Finally, convenient way to use it and contribute to it.

## Contribution 

**We welcome contributions and corrections to this resource either way:**

 - **common way**    - send us your comments, corrections or suggestions by email: remigijus.paulavicius@imperial.ac.uk
 - **modern way** - [fork](https://help.github.com/articles/fork-a-repo/) this github repository, add new information & correct existing, then create a [pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/) and we gratefully incorporate your contribution!

## Citation

If you use **BASBLib**, please cite the following source: 

* Remigijus Paulavicius, & Claire S. Adjiman. (2017). BASBLib - a library of bilevel test problems [Data set]. Zenodo. 
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.556423.svg)](https://doi.org/10.5281/zenodo.556423)

# Problems classification

Since bilevel programming involves two optimization problems (the outer and the inner) our classification is based on the nature of these problems. At the moment, in our classification we distinguish the following classes (types) of bilevel programming problems:

## [Linear-Linear (LP-LP)](LP-LP-problems) 

View a summary table of [all LP-LP problems](LP-LP-problems) or click on a problem name for more information.

|                                |                                    |                                |                                |                                |
| :----------------------------- | :--------------------------------- | :----------------------------- | :----------------------------- | :----------------------------- |
[mb_2007_01](LP-LP/mb_2007_01)   | [mb_2007_02](LP-LP/mb_2007_02)     | [as_2013_01](LP-LP/as_2013_01) | [cw_1988_01](LP-LP/cw_1988_01) | [lh_1994_01](LP-LP/lh_1994_01) |
[sib_1997_02](LP-LP/sib_1997_02) | [sib_1997_02v](LP-LP/sib_1997_02v) | [b_1984_01](LP-LP/b_1984_01)   | [aw_1990_01](LP-LP/aw_1990_01) | [b_1991_01](LP-LP/b_1991_01)   |
[b_1991_01v](LP-LP/b_1991_01v)   | [cw_1990_01](LP-LP/cw_1990_01)     | [bf_1982_02](LP-LP/bf_1982_02) | [bf_1982_01](LP-LP/bf_1982_01) | [s_1989_01](LP-LP/s_1989_01)   | 
[ct_1982_01](LP-LP/ct_1982_01)   |                                    |                                |                                |                                |

## [Linear-Quadratic (LP-QP)](LP-QP-problems)

View a summary table of [all LP-QP problems](LP-QP-problems) or click on a problem name for more information.

|                                |                                    |                                |                                |                                |
| :----------------------------- | :--------------------------------- | :----------------------------- | :----------------------------- | :----------------------------- |
[mb_2006_01](LP-QP/mb_2006_01)   | [mb_2007_04](LP-QP/mb_2007_04)     | [mb_2007_03](LP-QP/mb_2007_03) | [b_1991_02](LP-QP/b_1991_02)   | [as_1984_01](LP-QP/as_1984_01) |

## [Linear-Nonlinear (LP-NLP)](LP-NLP-problems) 

View a summary table of [all LP-NLP problems](LP-NLP-problems) or click on a problem name for more information.

|                                |                                    |                                 |                                 |                                   |
| :----------------------------- | :--------------------------------- | :------------------------------ | :------------------------------ | :-------------------------------- |
[mb_2007_05](LP-NLP/mb_2007_05)  | [mb_2007_06](LP-NLP/mb_2007_06)    | [mb_2007_10](LP-NLP/mb_2007_10) | [mb_2007_11](LP-NLP/mb_2007_11) | [mb_2007_13](LP-NLP/mb_2007_13)   |
[mb_2007_15](LP-NLP/mb_2007_15)  | [mb_2007_16](LP-NLP/mb_2007_16)    | [ka_2014_01](LP-NLP/ka_2014_01) | [mb_2007_09](LP-NLP/mb_2007_09) | [nwj_2016_01](LP-NLP/nwj_2016_01) |
[gf_2001_01](LP-NLP/gf_2001_01)  | [cg_1999_01](LP-NLP/cg_1999_01)    |                                 |                                 |                                   |

## [Quadratic-Quadratic (QP-QP)](QP-QP-problems) 

View a summary table of [all QP-QP problems](QP-QP-problems) or click on a problem name for more information.

|                               |                                    |                                  |                                 |                                   |
| :---------------------------- | :--------------------------------- | :------------------------------- | :------------------------------ | :-------------------------------- |
[b_1998_04](QP-QP/b_1998_04)    | [b_1998_05](QP-QP/b_1998_05)       | [lmp_1987_01](QP-QP/lmp_1987_01) | [y_1996_02](QP-QP/y_1996_02)    | [d_1992_01](QP-QP/d_1992_01)      |
[d_2000_01](QP-QP/d_2000_01)    | [cw_1990_02](QP-QP/cw_1990_02)     | [tmh_2007_01](QP-QP/tmh_2007_01) | [b_1988_01](QP-QP/b_1988_01)    | [sa_1981_01](QP-QP/sa_1981_01)    |
[sc_1998_01](QP-QP/sc_1998_01)  | [b_1998_02](QP-QP/b_1998_02)       | [b_1998_03](QP-QP/b_1998_03)     | [b_1998_07](QP-QP/b_1998_07)    | [d_1978_01](QP-QP/d_1978_01)      |
[fl_1995_01](QP-QP/fl_1995_01)  | [sa_1981_02](QP-QP/sa_1981_02)     | [b_1984_02](QP-QP/b_1984_02)     | [dd_2012_02](QP-QP/dd_2012_02)  | [as_1981_01](QP-QP/as_1981_01)    |


## [Quadratic-Nonlinear (QP-NLP)](QP-NLP-problems) 

View a summary table of [all QP-NLP problems](QP-NLP-problems) or click on a problem name for more information.

|                                 |                                    |                                  |                                 |                                   |
| :------------------------------ | :--------------------------------- | :------------------------------- | :------------------------------ | :-------------------------------- |
[mb_2007_12](QP-NLP/mb_2007_12)   | [mb_2007_14](QP-NLP/mb_2007_14)    | [mb_2007_17](QP-NLP/mb_2007_17)  | [mb_2007_18](QP-NLP/mb_2007_18) | [mb_2007_19](QP-NLP/mb_2007_19)   |
[mb_2007_20](QP-NLP/mb_2007_20)   | [mb_2007_21](QP-NLP/mb_2007_21)    | [mb_2007_23](QP-NLP/mb_2007_23)  | [mb_2007_22](QP-NLP/mb_2007_22) | [dd_2012_01](QP-NLP/dd_2012_01)   |
[sib_1997_01](QP-NLP/sib_1997_01) | [yz_2010_01](QP-NLP/yz_2010_01)    | [mb_2007_08](QP-NLP/mb_2007_08)  | [c_2002_02](QP-NLP/c_2002_02)   | [c_2002_04](QP-NLP/c_2002_04)     |

## [Nonlinear-Nonlinear (NLP-NLP)](NLP-NLP-problems)

View a summary table of [all NLP-NLP problems](NLP-NLP-problems) or click on a problem name for more information.

|                                  |                                    |                                    |                                    |                                    |
| :------------------------------- | :--------------------------------- | :--------------------------------- | :--------------------------------- | :--------------------------------- |
[c_2002_01](NLP-NLP/c_2002_01)     | [c_2002_03](NLP-NLP/c_2002_03)     | [c_2002_05](NLP-NLP/c_2002_05)     | [fz_1998_01](NLP-NLP/fz_1998_01)   | [mb_2007_24](NLP-NLP/mb_2007_24)   |
[nwj_2016_02](NLP-NLP/nwj_2016_02) | [nwj_2016_04](NLP-NLP/nwj_2016_04) | [nwj_2016_03](NLP-NLP/nwj_2016_03) | [nwj_2016_05](NLP-NLP/nwj_2016_05) | [ka_2014_02](NLP-NLP/ka_2014_02)   |


# Acknowledgment

```
We gratefully acknowledge funding from the EPSRC through a Leadership Fellowship [EP/J003840/1]
```


