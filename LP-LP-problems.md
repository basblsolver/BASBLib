##  Summary of LP-LP bilevel problems

Description of the [Linear-Linear](LP-LP-problems) bilevel test problems: data and references

| Label                              | Source                                                      |  _n_  |  _m_  |   _F*_    |   _f*_  |       __x*__      |               __y*__             |
| :--------------------------------: |:-----------------------------------------------------------:|:-----:|:-----:|:---------:|:-------:|:-----------------:|:--------------------------------:|
| [mb_2007_01](LP-LP/mb_2007_01)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  0    |   1   |  1.000    | -1.000  | -                 | 1.000                            |
| [mb_2007_02](LP-LP/mb_2007_02)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  0    |   1   |  Infeas.  | Infeas. | -                 | -                                |
| [as_2013_01](LP-LP/as_2013_01)     | [(Allende & Still, 2013)][Allende & Still, 2013]            |  1    |   1   |  0.000    | 0.000   | 0.000             | 0.000                            |
| [cw_1988_01](LP-LP/cw_1988_01)     | [(Clark & Westerberg, 1988)][Clark & Westerberg, 1988]      |  1    |   1   |  -37.000  | 14.000  | 19.000            | 14.000                           |
| [lh_1994_01](LP-LP/lh_1994_01)     | [(Liu & Hart, 1994)][Liu & Hart, 1994]                      |  1    |   1   |  -16.000  | 4.000   | 4.000             | 4.000                            |
| [sib_1997_02](LP-LP/sib_1997_02)   | [(Shimizu et al., 1997)][Shimizu et al., 1997]              |  1    |   1   |  -2.000   | 1.000   | 2.000             | 1.000                            |
| [sib_1997_02v](LP-LP/sib_1997_02)  |                                                             |  1    |   1   |  -12.000  | 4.000   | 4.000             | 4.000                            |
| [b_1984_01](LP-LP/b_1984_01)       | [(Bard, 1984)][Bard, 1984]                                  |  1    |   1   |  3.111    | -6.667  | 0.889             | 2.222                            |
| [aw_1990_01](LP-LP/aw_1990_01)     | [(Anandalingam & White, 1990)][Anandalingam & White, 1990]  |  1    |   1   |  -49.00   | 17.000  | 16.000            | 11.000                           |
| [b_1991_01](LP-LP/b_1991_01)       | [(Bard, 1991)][Bard, 1991]                                  |  1    |   2   |  -1.000   | 0.000   | 1.000             | (0.000, 0.000)                   |
|                                    |                                                             |       |       |  -1.000   | -1.000  | 0.000             | (0.000, 1.000)                   |
| [cw_1990_01](LP-LP/cw_1990_01)     | [(Clark & Westerberg, 1990)][Clark & Westerberg, 1990]      |  1    |   2   |  -13.00   | -4.000  | 5.000             | (4.000, 2.000)                   |
| [bf_1982_02](LP-LP/bf_1982_02)     | [(Bard & Falk, 1982)][Bard & Falk, 1982]                    |  2    |   2   |  -3.250   | -4.000  | (2.000, 0.000)    | (1.500, 0.000)                   |
| [bf_1982_01](LP-LP/bf_1982_01)     | [(Bard & Falk, 1982)][Bard & Falk, 1982]                    |  2    |   3   |  -26.000  | 3.200   | (0.000, 0.900)    | (0.000, 0.600, 0.400)            |
| [s_1989_01](LP-LP/s_1989_01)       | [(Savard, 1989)][Savard, 1989]                              |  2    |   3   |  -14.600  | 0.300   | (0.000, 0.650)    | (0.000, 0.300, 0.000)            |
| [ct_1982_01](LP-LP/ct_1982_01)     | [(Candler & Townsley, 1982)][Candler & Townsley, 1982]      |  2    |   6   |  -29.200  | 3.200   | (0.000, 0.900)    | (0.0, 0.6, 0.4, 0.0, 0.0, 0.0)   |

##  References

 - [G. B. Allende and G. Still, Solving bilevel programs with the KKT-approach, *Mathematical programming*, 138 (2013), pp. 309–332](https://doi.org/10.1007/s10107-012-0535-x)
 - [G. Anandalingam and D. White, A solution method for the linear static stackelberg problem using penalty functions, *IEEE Transactions on Automatic Control*, 35 (1990), pp. 1170– 1173](https://doi.org/10.1109/9.58565)
 - [J. F. Bard, Optimality conditions for the bilevel programming problem, Naval research logistics quarterly, 31 (1984), pp. 13–26](https://doi.org/10.1002/nav.3800310104)
 - [J. F. Bard, Some properties of the bilevel programming problem, *Journal of optimization theory and applications*, 68 (1991), pp. 371–378](https://doi.org/10.1007/BF00941574)
 - [J. F. Bard and J. E. Falk, An explicit solution to the multi-level programming problem, Computers & Operations Research, 9 (1982), pp. 77–100](https://doi.org/10.1016/0305-0548(82)90007-7)
 - [W. Candler and R. Townsley, A linear two-level programming problem, Computers & Operations Research, 9 (1982), pp. 59–76](https://doi.org/10.1016/0305-0548(82)90006-5)
 - [P. Clark and A. Westerberg, A note on the optimality conditions for the bilevel programming problem, Naval Research Logistics (NRL), 35 (1988), pp. 413–418](https://doi.org/10.1002/1520-6750(198810)35:5<413::AID-NAV3220350505>3.0.CO;2-6)
 - [P. A. Clark and A. W. Westerberg, Bilevel programming for steady-state chemical process design-I. fundamentals and algorithms, Computers & Chemical Engineering, 14 (1990), pp. 87–97](https://doi.org/10.1016/0098-1354(90)87007-C)
 - [Y.-H. Liu and S. M. Hart, Characterizing an optimal solution to the linear bilevel programming problem, European Journal of Operational Research, 73 (1994), pp. 164–166](https://doi.org/10.1016/0377-2217(94)90155-4)
 - [A. Mitsos and P. I. Barton, A Test Set for Bilevel Programs, 2007. Last updated September 19, 2007](https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs)
 - [G. Savard, Contribution à la programmation mathématique à deux niveaux, phd thesis, Ecole Polytechnique de Montréal, Université de Montréal, 1989](https://books.google.co.uk/books/about/Contribution_%C3%A0_la_programmation_math%C3%A9m.html?id=zz0VNAEACAAJ&redir_esc=y)
 - [K. Shimizu, Y. Ishizuka, and J. F. Bard, Nondifferentiable and Two-Level Mathematical Programming, vol. 102, Kluwer Academic Publishers, Boston, 1997](https://doi.org/10.1016/S0377-2217(97)00228-2)

[<img src="https://cdn1.iconfinder.com/data/icons/MetroStation-PNG/128/MB__home.png" width="40" height="40">](index "Back to homepage")

[Allende & Still, 2013]: https://doi.org/10.1007/s10107-012-0535-x
[Anandalingam & White, 1990]: https://doi.org/10.1109/9.58565
[Bard, 1984]: https://doi.org/10.1002/nav.3800310104
[Bard, 1991]: https://doi.org/10.1007/BF00941574
[Bard & Falk, 1982]: https://doi.org/10.1016/0305-0548(82)90007-7
[Candler & Townsley, 1982]: https://doi.org/10.1016/0305-0548(82)90006-5
[Clark & Westerberg, 1988]: https://doi.org/10.1002/1520-6750(198810)35:5<413::AID-NAV3220350505>3.0.CO;2-6
[Clark & Westerberg, 1990]: https://doi.org/10.1016/0098-1354(90)87007-C
[Liu & Hart, 1994]: https://doi.org/10.1016/0377-2217(94)90155-4
[Mitsos & Barton, 2007]: https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs
[Savard, 1989]: https://books.google.co.uk/books/about/Contribution_%C3%A0_la_programmation_math%C3%A9m.html?id=zz0VNAEACAAJ&redir_esc=y
[Shimizu et al., 1997]: https://doi.org/10.1016/S0377-2217(97)00228-2
