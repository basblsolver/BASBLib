# ------------------------------------------------------------------------------
# Name
#   Example 3.26                                                     (mb_2_3_02)
# Source:
#   Mitsos, A., & Barton, P.I. (2007). A Test Set for Bilevel Programs.
#   Technical Report. Massachusetts Institute of Technology
#
# Optimal solutions:
#   F* = -2.350, f* = -2.0 at (x*,y*) = (-1,-1,1,+/-1,-0.707)
# ------------------------------------------------------------------------------
set I:= 1..2;
set J:= 1..3;
set K:= 1..6;

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
minimize outer_obj: x[1]*y[1] + x[2]*y[2]^2 + x[1]*x[2]*y[3]^3,
  suffix cat 1;

# OUTER CONSTRAINTS
subject to outer_con_1: -x[1]^2 <= -0.1,
  suffix cat 1;

subject to outer_con_2: -(y[1]^2 + y[2]^2 + y[3]^2) <= -1.5,
  suffix cat 1;

# NOTE: According to Mitsos pdf: <= -2.5, looks another typos @REM
subject to outer_con_3: y[1]^2 + y[2]^2 + y[3]^2 <= 2.5,
  suffix cat 1;

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: x[1]*y[1]^2 + x[2]*y[2]^2 + (x[1]-x[2])*y[3]^2 <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity_1: -mu[1] + mu[2] + 2*x[1]*y[1] = 0,
  suffix cat 3;

subject to stationarity_2: -mu[3] + mu[4] + 2*x[2]*y[2] = 0,
  suffix cat 3;

subject to stationarity_3: -mu[5] + mu[6] + 2*(x[1]- x[2])*y[3] = 0,
  suffix cat 3;

subject to complementarity_1: -mu[1] -mu[1]*y[1] = 0,
  suffix cat 3;

subject to complementarity_2: -mu[2] + mu[2]*y[1] = 0,
  suffix cat 3;

subject to complementarity_3: -mu[3] -mu[3]*y[2] = 0,
  suffix cat 3;

subject to complementarity_4: -mu[4] + mu[4]*y[2] = 0,
  suffix cat 3;

subject to complementarity_5: -mu[5] -mu[5]*y[3] = 0,
  suffix cat 3;

subject to complementarity_6: -mu[6] + mu[6]*y[3] = 0,
  suffix cat 3;



















