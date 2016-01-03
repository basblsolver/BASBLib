# ------------------------------------------------------------------------------
# Name
#   Example 3.8                                                      (mb_1_1_01)
# Source:
#   Mitsos, A., & Barton, P.I. (2007). A Test Set for Bilevel Programs.
#   Technical Report. Massachusetts Institute of Technology
#
# Optimal solution:
#   F* = 0.0, f* = 0.0 at (x*,y*) = (-0.567,0.0)
# ------------------------------------------------------------------------------
set I:= 1..2;

# OUTER VARIABLES
var x >= -1, <= 1;

# INNER VARIABLES
var y >= -1, <= 1;

# KKT MULTIPLIERS
var mu {i in I} >= 0, <= 5;

# OUTER OBJECTIVE
minimize outer_obj: y^2;

# OUTER CONSTRAINTS
subject to outer_cnstr_1: y <= 0.1;
subject to outer_cnstr_2: -y <= 0.1;

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: x*y + exp(x)*y <= 0;

# STATIONARITY CONDITIONS
subject to stationarity: x + exp(x) - mu[1] + mu[2] = 0;

# COMPLEMENTARITY CONDITIONS
subject to complementarity_1: mu[1]*(-1 - y) = 0;
subject to complementarity_2: mu[2]*(y - 1) = 0;











