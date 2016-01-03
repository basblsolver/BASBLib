# ------------------------------------------------------------------------------
# Name:
#   Example 3.5                                                      (mb_0_1_05)
# Source:
#   Mitsos, A., & Barton, P.I. (2007). A Test Set for Bilevel Programs.
#   Technical Report. Massachusetts Institute of Technology
#
# Optimal solution:
#   F* = 0.5, f* = -1.0 at (y*) = (0.5)
# ------------------------------------------------------------------------------
# INNER VARIABLES
var y >= -1, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu1 >= 0, <= 2,
  suffix cat 3;

var mu2 >= 0, <= 2,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: y,
  suffix cat 1;

# INNER OBJECTIVE (PART OF CONSTRAINTS)
subject to inner_obj: 16*y^4 + 2*y^3 - 8*y^2 - 1.5*y + 0.5 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: 64*y^3 + 6*y^2 - 16*y - 1.5 - mu1 + mu2 = 0,
  suffix cat 3;

subject to complementarity_1: mu1*(-1 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu2*(y - 1) = 0,
  suffix cat 3;










