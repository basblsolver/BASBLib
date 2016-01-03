# ------------------------------------------------------------------------------
# Name
#   Example 3 (Kleniati and Adjiman, 2014)                          (mb_1_1_06v)
#   Variant of Example 3.13 from (Mitsos and Barton, 2007)
# Source
#   Kleniati, P.-M., & Adjiman, C. S. (2014). Branch-and-Sandwich:
#   a deterministic global optimization algorithm for optimistic bilevel
#   programming problems. Part II: Convergence analysis and numerical results.
#   Journal of Global Optimization, 60(3), 459–481.
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

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: 0.5*x*y^2 - x*y^3 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: x*y - 3*x*y^2 - mu1 + mu2 = 0,
  suffix cat 3;

subject to complementarity_1: mu1*(-1 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu2*(y - 1) = 0,
  suffix cat 3;











