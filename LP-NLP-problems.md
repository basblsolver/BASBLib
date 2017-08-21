##  Summary of LP-NLP bilevel problems

Description of the [Linear-Nonlinear](LP-NLP-problems) bilevel test problems: data and references

| Label                               | Source                                                      |  _n_  |  _m_  |   _F*_    |   _f*_  |       __x*__      |               __y*__             |
| :---------------------------------: |:-----------------------------------------------------------:|:-----:|:-----:|:---------:|:-------:|:-----------------:|:--------------------------------:|
| [mb_2007_05](LP-NLP/mb_2007_05)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  0    |   1   |  0.500    | -1.000  | -                 | 0.500                            |
| [mb_2007_06](LP-NLP/mb_2007_06)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  0    |   1   |  -1.000   | -1.000  | -                 | -1.000                           |
| [mb_2007_10](LP-NLP/mb_2007_10)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.500    | -0.100  | [0.100, 1.000]    | 0.500                            |
| [mb_2007_11](LP-NLP/mb_2007_11)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  -0.800   | 0.000   | 0.000             | -0.800                           |
| [mb_2007_13](LP-NLP/mb_2007_13)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  -1.000   | 0.000   | 0.000             | 1.000                            |
| [mb_2007_13v](LP-NLP/mb_2007_13v)   | [(Paulavicius et al., 2017b)][Paulavicius et al., 2017b]    |  1    |   1   |  -2.000   | -1.500  | -1.000            | -1.000                           |
| [mb_2007_15](LP-NLP/mb_2007_15)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.000    | -0.830  | -1.000            | 1.000                            |
| [mb_2007_16](LP-NLP/mb_2007_16)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  -2.000   | 0.000   | -1.000            | 0.000                            |
|                                     |                                                             |       |       |  -2.000   | 0.000   | -0.500            | -1.000                           |
| [ka_2014_01](LP-NLP/ka_2014_01)     | [(Kleniati & Adjiman, 2014)][Kleniati & Adjiman, 2014]      |  1    |   1   |  -1.000   | 0.000   | 0.000             | 1.0000                           |
| [mb_2007_09](LP-NLP/mb_2007_09)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  -1.000   | -1.000  | -1.000            | -1.000                           |
| [nwj_2017_01](LP-NLP/nwj_2017_01)   | [(Nie et al., 2017)][Nie et al., 2017]                      |  1    |   2   |  2.000    | 0.000   | 2.000             | (0.000, 0.000)                   |
| [gf_2001_01](LP-NLP/gf_2001_01)     | [(Gümüş & Floudas, 2001)][Gümüş & Floudas, 2001]            |  1    |   2   |  0.190    | -7.250  | 0.194             | (9.970, 10.000)                  |
| [cg_1999_01](LP-NLP/cg_1999_01)     | [(Calvete & Gale, 1999)][Calvete & Gale, 1999]              |  2    |   3   |  -29.200  | 0.310   | (0.000, 0.900)    | (0.000, 0.600, 0.400)            |

##  References

 - [H. I. Calvete and C. Gale ́, The bilevel linear/linear fractional programming problem, Eu- ropean Journal of Operational Research, 114 (1999), pp. 188–197](https://doi.org/10.1016/S0377-2217(98)00078-2)
 - [Z. H. Gümüş and C. A. Floudas, Global optimization of nonlinear bilevel programming problems, Journal of Global Optimization, 20 (2001), pp. 1–31](https://doi.org/10.1023/A:1011268113791)
 - [P.-M. Kleniati and C. S. Adjiman, Branch-and-Sandwich: a deterministic global optimization algorithm for optimistic bilevel programming problems. Part II: Convergence analysis and numerical results, Journal of Global Optimization, 60 (2014), pp. 459–481](https://doi.org/10.1007/s10898-013-0120-8)
 - [A. Mitsos and P. I. Barton, A Test Set for Bilevel Programs, 2007. Last updated September 19, 2007](https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs)
 - [J. Nie, L. Wang, and J. Ye, Bilevel polynomial programs and semidefinite relaxation methods, SIAM Journal on Optimization, 27 (2017), pp. 1728–1757](https://doi.org/10.1137/15M1052172)
 - [R. Paulavičius, P.M. Kleniati, and C. S. Adjiman, BASBL: Branch-And-Sandwich BiLevel solver. II. Implementation and computational study with the BASBLib test set, (2017). Submitted.]()

[<img src="https://cdn1.iconfinder.com/data/icons/MetroStation-PNG/128/MB__home.png" width="40" height="40">](index "Back to homepage")

[Calvete & Gale, 1999]: https://doi.org/10.1016/S0377-2217(98)00078-2
[Gümüş & Floudas, 2001]: https://doi.org/10.1023/A:1011268113791
[Kleniati & Adjiman, 2014]: https://doi.org/10.1007/s10898-013-0120-8
[Mitsos & Barton, 2007]: https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs
[Nie et al., 2017]: https://doi.org/10.1137/15M1052172