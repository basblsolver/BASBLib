# ------------------------------------------------------------------------------
# Example 3.13
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs
#
# Optimal solution:
#   F* = -1.0, f* = 0.0 at (x*,y*) = (0,1)
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
minimize outer_obj: x - y,
  suffix cat 1;

# INNER OBJECTIVE (PART OF CONSTRAINS)
subject to inner_obj: 0.5*x*y^2 - y*x^3 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: x*y - x^3 - mu1 + mu2 = 0,
  suffix cat 3;

subject to complementarity_1: mu1*(-1 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu2*(y - 1) = 0,
  suffix cat 3;











