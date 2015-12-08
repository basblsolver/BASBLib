# ------------------------------------------------------------------------------
# Example 3.4
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs.
#
# Optimal solution:
#   F* = 1.0, f* = -1.0 at (y*) = (1.0)
# ------------------------------------------------------------------------------
set I:= 1..2;

# INNER VARIABLES
var y >= -0.5, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu {i in I} >= 0, <= 2,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: y,
  suffix cat 1;

# INNER OBJECTIVE (PART OF CONSTRAINS)
subject to inner_obj: -y^2 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: -2*y - mu[1] + mu[2] = 0,
  suffix cat 3;

subject to complementarity_1: mu[1]*(-0.5 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu[2]*(y - 1) = 0,
  suffix cat 3;











