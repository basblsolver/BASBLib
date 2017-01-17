##  Summary

Description of the [Linear-Quadratic](LP-QP-problems) type bilevel test problems: data and references

| Label                        | Source                                                      |  _n_  |  _m_  |   _F*_    |   _f*_   |       __x*__      |               __y*__             |
| :--------------------------: |:-----------------------------------------------------------:|:-----:|:-----:|:---------:|:--------:|:-----------------:|:--------------------------------:|
| [mb_2006_01](mb_2006_01)     | [(Mitsos & Barton, 2006)][Mitsos & Barton, 2006]            |  0    |   1   |  -1.000   | -1.000   | -                 | -1.000                           |
| [mb_2007_04](mb_2007_04)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  0    |   1   |  1.000    | -1.000   | -                 | 1.000                            |
| [mb_2007_03](mb_2007_03)     | [(Mitsos & Barton, 2007)][Mitsos & Barton, 2007]            |  0    |   1   |  -1.000   | 1.000    | -                 | -1.000                           |
| [b_1991_02](b_1991_02)       | [(Bard, 1991)][Bard, 1991]                                  |  1    |   2   |  2.000    | 12.000   | 2.000             | (6.000, 0.000)                   |
| [nwj_2016_01](nwj_2016_01)   | [(Nie et al., 2016)][Nie et al., 2016]                      |  1    |   2   |  2.000    | 0.000    | 2.000             | (0.000, 0.000)                   |
| [as_1984_01](as_1984_01)     | [(Aiyoshi & Shimizu, 1984)][Aiyoshi & Shimizu, 1984]        |  2    |   2   |  0.000    | 200.000  | (0.000, 0.000)    | (-10.000, -10.000)               |
|                              |                                                             |       |       |  0.000    | 100.000  | (0.000, 30.000)   | (-10.000, 10.000)                |


##  References

 - [E. Aiyoshi and K. Shimizu, A solution method for the static constrained Stackelberg problem via penalty method, IEEE Transactions on Automatic Control, 29 (1984), pp. 1111–1114](https://doi.org/10.1109/TAC.1984.1103455)
 - [J. F. Bard, Some properties of the bilevel programming problem, *Journal of optimization theory and applications*, 68 (1991), pp. 371–378](https://doi.org/10.1007/BF00941574)
 - [A. Mitsos and P. I. Barton, Issues in the development of global optimization algorithms for bilevel programs with a nonconvex inner program, Technical report, Massachusetts Institute of Technology](https://yoric.mit.edu/sites/default/files/documents/bilevelissues.pdf)
 - [A. Mitsos and P. I. Barton, A Test Set for Bilevel Programs, 2007. Last updated September 19, 2007](https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs)
 - [J. Nie, L. Wang, and J. Ye, Bilevel polynomial programs and semidefinite relaxation methods, ArXiv preprint arXiv:1508.06985, (2016)](https://arxiv.org/pdf/1508.06985v3.pdf)
 - [V. Visweswaran, C. Floudas, M. Ierapetritou, and E. Pistikopoulos, A decomposition-based global optimization approach for solving bilevel linear and quadratic programs, in State of the art in global optimization, Springer, 1996, pp. 139–162](https://doi.org/10.1007/978-1- 4613-3437-8_10)

 [back](index)

[Aiyoshi & Shimizu, 1984]: https://doi.org/10.1109/TAC.1984.1103455
[Bard, 1991]: https://doi.org/10.1007/BF00941574
[Mitsos & Barton, 2006]:
[Mitsos & Barton, 2006]: https://yoric.mit.edu/sites/default/files/documents/bilevelissues.pdf
[Mitsos & Barton, 2007]: https://www.researchgate.net/publication/228455291_A_test_set_for_bilevel_programs
[Nie et al., 2016]: https://arxiv.org/pdf/1508.06985v3.pdf
[Visweswaran et al., 1996]: https://doi.org/10.1007/978-1-4613-3437-8_10
