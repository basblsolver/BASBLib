# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   cw_1990_01.mod
#
# Source:
#   From Sect. 3.1. Multiple inner problem maxima from:
#   Clark, P. A., Westerberg, A. W. (1990).
#   Bilevel programming for steady-state chemical process design—I.
#   fundamentals and algorithms.
#   Computers & Chemical Engineering, 14(1), 87-97.
#
# Optimal solution:
#   F* = -13.0
#   f* = -4.0
#   x* = 5.0
#   y* = (4.0, 2.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       3       0
# ==============================================================================
var x >= 0, <= 8;           # Outer variable
var y{1..2} >= 0, <= 4;     # Inner variable
var l{1..7} >= 0, <= 10;    # KKT Multipliers

minimize outer_obj: -x - 3*y[1] + 2*y[2];  # Outer objective

subject to
# Inner objective:
    inner_obj: -y[1] = 0;
# Inner constraints
    inner_con1: -2*x + y[1] + 4*y[2] - 16 <= 0;
    inner_con2:  8*x + 3*y[1] - 2*y[2] - 48 <= 0;
    inner_con3: -2*x + y[1] - 3*y[2] + 12 <= 0;
# KKT conditions:
    stationarity_1:    -1 + l[1] + 3*l[2] + l[3] - l[4] + l[5] = 0;
    stationarity_2:    4*l[1] - 2*l[2] - 3*l[3] - l[6] + l[7] = 0;
    complementarity_1: l[1]*(-2*x + y[1] + 4*y[2] - 16) = 0;
    complementarity_2: l[2]*(8*x + 3*y[1] - 2*y[2] - 48) = 0;
    complementarity_3: l[3]*(-2*x + y[1] - 3*y[2] + 12) = 0;
    complementarity_4: l[4]*y[1] = 0;
    complementarity_5: l[5]*(y[1] - 4) = 0;
    complementarity_6: l[6]*y[2] = 0;
    complementarity_7: l[7]*(y[2] - 8) = 0;
