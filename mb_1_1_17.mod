# ------------------------------------------------------------------------------
# Example 3.24
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs.
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











