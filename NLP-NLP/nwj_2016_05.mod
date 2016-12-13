# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   nwj_2016_05.mod
#
# Source:
#  Example 5.8. from:  Nie, J., Wang, L., & Ye, J. (2016).
#  Bilevel polynomial programs and semidefinite relaxation methods.
#  arXiv preprint arXiv:1508.06985.
#
# Optimal solution:
#   F* = -0.437
#   f* = -1.190
#   x* = (0.000, 0.000, -0.707, -0.707)
#   y* = (0.618, 0.000, -0.558, -0.554)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   4       4       3       0       2       0
# ==============================================================================
var x{1..4} >= -1, <= 1;    # Outer variables
var y{1..4} >= -10, <= 10;  # Inner variables
var l{1..10} >= 0, <= 100;  # Multipliers

minimize outer_obj: (x[1] + x[2] + x[3] + x[4])*(y[1] + y[2] + y[3] + y[4]);

subject to
# Outer constraints:
    outer_con_1:  x[1]^2 + x[2]^2 + x[3]^2 + x[4]^2 - 1 <= 0;
    outer_con_2: -x[1] + y[2]*y[4] <= 0;
    outer_con_3: -x[4] + y[3]^2 <= 0;
# Inner objective
    inner_obj: x[1]*y[1] + x[2]*y[2] + 0.1*y[3] + 0.5*y[4] - y[3]*y[4] = 0;
# Inner constraints:
    inner_con_1:  y[1]^2 + 2*y[2]^2 + 3*y[3]^2 + 4*y[4]^2 - x[1]^2 - x[3]^2 - x[2] - x[4] <= 0;
    inner_con_2:  y[1]*y[4] - y[2]*y[3] <= 0;
# KKT conditions
    stationarity_1: x[1] + 2*l[1]*y[1] + l[2]*y[4] - l[3] + l[4] = 0;
    stationarity_2: x[2] + 4*l[1]*y[2] - l[2]*y[3] - l[5] + l[6] = 0;
    stationarity_3: 0.1 - y[4] + 6*l[1]*y[3] - l[2]*y[2] - l[7] + l[8] = 0;
    stationarity_4: 0.5 - y[3] + 8*l[1]*y[4] + l[2]*y[1] - l[9] + l[10] = 0;
    complementarity_1: l[1]*(y[1]^2 + 2*y[2]^2 + 3*y[3]^2 + 4*y[4]^2 - x[1]^2 - x[3]^2 - x[2] - x[4]) = 0;
    complementarity_2: l[2]*(y[1]*y[4] - y[2]*y[3]) = 0;
    complementarity_3: l[3]*(-y[1] - 10) = 0;
    complementarity_4: l[4]*(y[1] - 10) = 0;
    complementarity_5: l[5]*(-y[2] - 10) = 0;
    complementarity_6: l[6]*(y[2] - 10) = 0;
    complementarity_7: l[7]*(-y[3] - 10) = 0;
    complementarity_8: l[8]*(y[3] - 10) = 0;
    complementarity_9: l[9]*(-y[4] - 10) = 0;
    complementarity_10: l[10]*(y[4] - 10) = 0;
