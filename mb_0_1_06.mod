# ------------------------------------------------------------------------------
# Name
#   Example 3.6                                                      (mb_0_1_06)
# Source:
#   Mitsos, A., & Barton, P.I. (2007). A Test Set for Bilevel Programs.
#   Technical Report. Massachusetts Institute of Technology
#
# Optimal solution:
#   F* = -1.0, f* = -1.0 at (y*) = (-1.0)
# ------------------------------------------------------------------------------
# INNER VARIABLES
var y >= -1, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu1 >= 0, <= 10,
  suffix cat 3;

var mu2 >= 0, <= 10,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: y,
  suffix cat 1;

# INNER OBJECTIVE (PART OF CONSTRAINTS)
subject to inner_obj: y^3 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: 3*y^2 - mu1 + mu2 = 0,
  suffix cat 3;

subject to complementarity_1: mu1*(-1 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu2*(y - 1) = 0,
  suffix cat 3;











