# ------------------------------------------------------------------------------
# Example 3.11
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs.
# ------------------------------------------------------------------------------
set I:= 1..2;

# OUTER VARIABLES
var x >= -1, <= 1,
  suffix cat 1;

# INNER VARIABLES
var y >= -0.8, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu {i in I} >= 0, <= 100,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: y,
  suffix cat 1;

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: x*(16*y^4 + 2*y^3 - 8*y^2 - 1.5*y + 0.5) <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: x*(64*y^3 + 6*y^2 - 16*y - 1.5) - mu[1] + mu[2] = 0,
  suffix cat 3;

subject to complementarity_1: mu[1]*(-0.8 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu[2]*(y - 1) = 0,
  suffix cat 3;











