# ------------------------------------------------------------------------------
# Example 3.3
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs.
#
# Optimal solution:
#   F* = -1.0, f* = 1.0 at (y*) = (-1.0)
# ------------------------------------------------------------------------------
set I:= 1..3;

# INNER VARIABLES
var y >= -10, <= 10,
  suffix cat 2;

# KKT MULTIPLIERS
var mu {i in I} >= 0, <= 2,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: y,
  suffix cat 1;

# INNER OBJECTIVE
subject to inner_obj: y^2 <= 0,
  suffix cat 2;

# INNER CONSTRAINT
subject to inner_con: 1 - y^2 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: 2*y - 2*y*mu[1] - mu[2] + mu[3] = 0,
  suffix cat 3;

subject to complementarity_1: mu[1]*(1 - y^2) = 0,
  suffix cat 3;

subject to complementarity_2: mu[2]*(-10 - y) = 0,
  suffix cat 3;

subject to complementarity_3: mu[3]*(y - 10) = 0,
  suffix cat 3;











