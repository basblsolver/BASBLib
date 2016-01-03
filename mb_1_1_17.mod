# ------------------------------------------------------------------------------
# Name
#   Example 3.24                                                     (mb_1_1_17)
# Source:
#   Mitsos, A., & Barton, P.I. (2007). A Test Set for Bilevel Programs.
#   Technical Report. Massachusetts Institute of Technology
#
# Optimal solution:
#   F* = -1.755, f* = 0.009 at (x*,y*) = (0.211,1.799)
# ------------------------------------------------------------------------------
# OUTER VARIABLES
var x >= 0, <= 1,
  suffix cat 1;

# INNER VARIABLES
var y >= 0, <= 3,
  suffix cat 2;

# KKT MULTIPLIERS
var mu1 >= 0, <= 2,
  suffix cat 3;

var mu2 >= 0, <= 2,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: x^2 - y,
  suffix cat 1;

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: ( (y-1-0.1*x)^2 - 0.5 - 0.5*x )^2 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: 4*((y-1-0.1*x)^2-0.5-0.5*x)*(y-1-0.1*x) - mu1 + mu2 = 0,
  suffix cat 3;

subject to complementarity_1: -mu1*y = 0,
  suffix cat 3;

subject to complementarity_2: mu2*(y - 3) = 0,
  suffix cat 3;











