# ------------------------------------------------------------------------------
# Name
#   Example 4 (Kleniati and Adjiman, 2014)                          (mb_5_5_02v)
#   Variant of Example 3.28 from (Mitsos and Barton, 2007)
# Source
#   Kleniati, P.-M., & Adjiman, C. S. (2014). Branch-and-Sandwich:
#   a deterministic global optimization algorithm for optimistic bilevel
#   programming problems. Part II: Convergence analysis and numerical results.
#   Journal of Global Optimization, 60(3), 459–481.
#
# Best known objective value(s):
#   F* = -10.0, f* = -3.1 at (x*,y*) = (1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# ------------------------------------------------------------------------------
set I:= 1..5;
set J:= 1..5;
set K:= 1..11;

# OUTER VARIABLES
var x {i in I} >= -1, <= 1,
  suffix cat 1;

# INNER VARIABLES
var y {j in J} >= -1, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu {k in K} >= 0, <= 100,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: sum {i in I} -x[i]^2 + sum {j in J} -y[j]^2,
  suffix cat 1;

# OUTER CONSTRAINTS
subject to outer_con_1: -x[1] + y[1]*y[2] <= 0,
  suffix cat 1;

subject to outer_con_2: x[2]*y[1]^2 <=0 ,
  suffix cat 1;

subject to outer_con_3: x[1] + y[3] -exp(x[2]) <=0 ,
  suffix cat 1;

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: 0.1*y[3] + y[1]^3 + (x[1]+x[2])*y[2]^2 + (y[4]^2 + y[5]^2)*x[3]*x[4]*x[5] <= 0,
  suffix cat 2;

# INNER CONSTRAINTS
subject to inner_con: x[1]-y[3]^2 <= 0.2,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity_1: 3*y[1]^2 - mu[2] + mu[3] = 0,
  suffix cat 3;

subject to stationarity_2: 2*(x[1] + x[2])*y[2] - mu[4] + mu[5] = 0,
  suffix cat 3;

subject to stationarity_3: -2*mu[1]*y[3] - mu[6] + mu[7] = -0.1,
  suffix cat 3;

subject to stationarity_4: 2*x[3]*x[4]*x[5]*y[4] -mu[8] + mu[9] = 0,
  suffix cat 3;

subject to stationarity_5: 2*x[3]*x[4]*x[5]*y[5] - mu[10] + mu[11] = 0,
  suffix cat 3;

subject to complementarity_1: mu[1]*(x[1]-y[3]^2-0.2) = 0,
  suffix cat 3;

subject to complementarity_2: mu[2]*(-1-y[1]) = 0,
  suffix cat 3;

subject to complementarity_3: mu[3]*(y[1]-1) = 0,
  suffix cat 3;

subject to complementarity_4: mu[4]*(-1-y[2]) = 0,
  suffix cat 3;

subject to complementarity_5: mu[5]*(y[2]-1) = 0,
  suffix cat 3;

subject to complementarity_6: mu[6]*(-1-y[3]) = 0,
  suffix cat 3;

subject to complementarity_7: mu[7]*(y[3]-1) = 0,
  suffix cat 3;

subject to complementarity_8: mu[8]*(-1-y[4]) = 0,
  suffix cat 3;

subject to complementarity_9: mu[9]*(y[4]-1) = 0,
  suffix cat 3;

subject to complementarity_10: mu[10]*(-1-y[5]) = 0,
  suffix cat 3;

subject to complementarity_11: mu[11]*(y[5]-1) = 0,
  suffix cat 3;



















