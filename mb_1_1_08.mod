# ------------------------------------------------------------------------------
# Name
#   Example 3.15                                                     (mb_1_1_08)
# Source:
#   Mitsos, A., & Barton, P.I. (2007). A Test Set for Bilevel Programs.
#   Technical Report. Massachusetts Institute of Technology
#
# Optimal solution:
#   F* = 0.0, f* = -0.83 at (x*,y*) = (-1,1)
# ------------------------------------------------------------------------------
# OUTER VARIABLES
var x >= -1, <= 1,
  suffix cat 1;

# INNER VARIABLES
var y >= -1, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu1 >= 0, <= 2,
  suffix cat 3;

var mu2 >= 0, <= 2,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: x + y,
  suffix cat 1;

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: 0.5*x*y^2 - y^3/3 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: x*y - y^2 - mu1 + mu2 = 0,
  suffix cat 3;

subject to complementarity_1: mu1*(-1 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu2*(y - 1) = 0,
  suffix cat 3;











