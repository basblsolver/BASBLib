# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   nwj_2016_04.mod
#
# Source:
#  Example 5.7. from:  Nie, J., Wang, L., & Ye, J. (2016).
#  Bilevel polynomial programs and semidefinite relaxation methods.
#  arXiv preprint arXiv:1508.06985.
#
# Optimal solution:
#   F* = -2.0
#   f* = -1.0
#   x* = (1.0,1.0)
#   y* = (0.0,0.0,1.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       3       1       0       2       0
# ==============================================================================
var x{1..2} >= -1, <= 1;    # Outer variables
var y{1..3} >= -10, <= 10;  # Inner variables
var l{1..8} >= 0, <= 100;   # Multipliers

minimize outer_obj: 0.5*x[1]^2*y[1] + x[2]*y[2]^2 - (x[1] + x[2]^2)*y[3];

subject to
# Outer constraints:
    outer_con: -x[1] - x[2] + x[1]^2 + y[1]^2 + y[2]^2 <= 0;
# Inner objective
    inner_obj: x[2]*(y[1]*y[2]*y[3] + y[2]^2 - y[3]^3) = 0;
# Inner constraints:
    inner_con_1:  -x[1] + y[1]^2 + y[2]^2 + y[3]^2 <= 0;
    inner_con_2:  -1 + 2*y[2]*y[3] <= 0;
# KKT conditions
    stationarity_1: x[2]*y[2]*y[3] + 2*y[1]*l[1] - l[3] + l[4] = 0;
    stationarity_2: x[2]*y[1]*y[3] + 2*y[2]*l[1] + 2*y[3]*l[2] - l[5] + l[6] = 0;
    stationarity_3: x[2]*y[1]*y[2] + 2*y[3]*l[1] + 2*y[2]*l[2] - l[7] + l[8] = 0;
    complementarity_1: l[1]*(-x[1] + y[1]^2 + y[2]^2 + y[3]^2) = 0;
    complementarity_2: l[2]*(-1 + 2*y[2]*y[3]) = 0;
#    complementarity_2: 2*y[2]*y[3]*l[2] - l[2] = 0;
    complementarity_3: l[3]*(-y[1] - 10) = 0;
    complementarity_4: l[4]*(y[1] - 10) = 0;
    complementarity_5: l[5]*(-y[2] - 10) = 0;
    complementarity_6: l[6]*(y[2] - 10) = 0;
    complementarity_7: l[7]*(-y[3] - 10) = 0;
    complementarity_8: l[8]*(y[3] - 10) = 0;
