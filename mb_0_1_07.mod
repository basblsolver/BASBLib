# ------------------------------------------------------------------------------
# Name:
#   Example 3.7                                                      (mb_0_1_07)
# Source:
#   Mitsos, A., & Barton, P.I. (2007). A Test Set for Bilevel Programs.
#   Technical Report. Massachusetts Institute of Technology
#
# Optimal solution:
#   Infeasible problem
#
# NOTE:
# ------------------------------------------------------------------------------
set I:= 1..2;

# INNER VARIABLES
var y >= -1, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu {i in I} >= 0, <= 2,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: y,
  suffix cat 1;

# OUTER CONSTRAINT
subject to outer_con: y <= 0,
  suffix cat 1;

# INNER OBJECTIVE (PART OF CONSTRAINTS)
subject to inner_obj: -y <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: -1 - mu[1] + mu[2] = 0,
  suffix cat 3;

subject to complementarity_1: mu[1]*(-1 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu[2]*(y - 1) = 0,
  suffix cat 3;











