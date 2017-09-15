##  Summary of QP-NLP bilevel problems

Description of the [Quadratic-Nonlinear](QP-NLP-problems) bilevel test problems: data and references

| Label                              | Source                                                      |  _n_  |  _m_  |   _F*_    |   _f*_  |       __x*__             |               __y*__             |
| :--------------------------------: |:-----------------------------------------------------------:|:-----:|:-----:|:---------:|:-------:|:------------------------:|:--------------------------------:|
| [mb_2007_12](QP-NLP/mb_2007_12)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.000    |  0.000  | 0.000                             | 0.000                   |
| [mb_2007_14](QP-NLP/mb_2007_14)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.250    | -0.083  | 0.250                             | 0.500                   |
| [mb_2007_17](QP-NLP/mb_2007_17)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.188    | -0.016  | -0.250                            | 0.500                   |
|                                    |                                                             |       |       |  0.188    | -0.016  | -0.250                            | -0.500                  |
| [mb_2007_18](QP-NLP/mb_2007_18)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   | -1.000    |  0.000  | 1.000                             | 0.000                   |
| [mb_2007_18v](QP-NLP/mb_2007_18v)  | [(Paulavicius et al., 2017b)][Paulavicius et al., 2017b]    |  1    |   1   |  0.250    |  0.000  | 0.500                             | 0.000                   |
| [mb_2007_19](QP-NLP/mb_2007_19)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   | -0.258    | -0.018  | 0.189                             | 0.439                   |
| [mb_2007_20](QP-NLP/mb_2007_20)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.313    | -0.083  | 0.500                             | 0.500                   |
| [mb_2007_21](QP-NLP/mb_2007_21)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.210    | -0.069  | -0.555                            | 0.455                   |
| [mb_2007_23](QP-NLP/mb_2007_23)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   | -1.755    |  0.009  |  0.211                            | 1.799                   |
| [mb_2007_22](QP-NLP/mb_2007_22)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.189    | -0.042  | 0.635                             | -0.433                  |
| [mb_2007_22v](QP-NLP/mb_2007_22v)  | [(Paulavicius et al., 2017b)][Paulavicius et al., 2017b]    |  1    |   1   |  0.210    | -0.069  | -0.555                            | 0.455                   |
| [dd_2012_01](QP-NLP/dd_2012_01)    | [(Dempe & Dutta, 2012)][Dempe & Dutta, 2012]                |  1    |   1   |  1.000    | 0.000   | 0.000                             | 0.000                   |
| [sib_1997_01](QP-NLP/sib_1997_01)  | [(Shimizu et al., 1997)][Shimizu et al., 1997]              |  1    |   1   |  2250.000 | 194.800 | 11.250                            | 5.000                   |
| [yz_2010_01](QP-NLP/yz_2010_01)    | [(Ye & Zhu, 2010)][Ye & Zhu, 2010]                          |  1    |   1   |  1.000    | -2.000  | 1.000                             | 1.000                   |
| [mb_2007_08](QP-NLP/mb_2007_08)    | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  1    |   1   |  0.000    |  0.000  | -0.567                            | 0.000                   |
| [c_2002_02](QP-NLP/c_2002_02)      | [(Colson, 2002)][Colson, 2002]                              |  1    |   1   |  17.000   | 2.000   | 1.000                             | 0.000                   |
| [c_2002_04](QP-NLP/c_2002_04)      | [(Colson, 2002)][Colson, 2002]                              |  1    |   1   |  88.754   | -0.077  | 0.000                             | 0.579                   |


##  References

 - [B. Colson, BIPA(BIlevel Programming with Approximation Methods)(software guide and test problems), Cahiers du GERAD, (2002)](https://www.gerad.ca/en/papers/G-2002-37/view)
 - [S. Dempe and J. Dutta, Is bilevel programming a special case of a mathematical program with complementarity constraints?, Mathematical Programming, 131 (2012), pp. 37–48](https://doi.org/10.1007/s10107-010-0342-1)
 - [A. Mitsos and P. I. Barton, A Test Set for Bilevel Programs, 2007. Last updated September 19, 2007](https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs)
 - [R. Paulavičius, P.M. Kleniati, and C. S. Adjiman, BASBL: Branch-And-Sandwich BiLevel solver. II. Implementation and computational study with the BASBLib test set, (2017). Submitted.]()
 - [K. Shimizu, Y. Ishizuka, and J. F. Bard, Nondifferentiable and Two-Level Mathematical Programming, vol. 102, Kluwer Academic Publishers, Boston, 1997](https://doi.org/10.1016/S0377-2217(97)00228-2)
 - [Ye, J. J., & Zhu, D. (2010). New necessary optimality conditions for bilevel programs by combining the MPEC and value function approaches. SIAM Journal on Optimization, 20(4), 1885-1905](https://doi.org/10.1137/080725088)

[<img src="https://cdn1.iconfinder.com/data/icons/MetroStation-PNG/128/MB__home.png" width="40" height="40">](index "Back to homepage")

[Colson, 2002]: https://www.gerad.ca/en/papers/G-2002-37/view
[Dempe & Dutta, 2012]: https://doi.org/10.1007/s10107-010-0342-1
[Mitsos & Barton, 2007]: https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs
[Shimizu et al., 1997]: https://doi.org/10.1016/S0377-2217(97)00228-2
[Ye & Zhu, 2010]: https://doi.org/10.1137/080725088

