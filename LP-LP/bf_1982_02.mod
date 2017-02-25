# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   bf_1982_02.mod
#
# Original source:
#  - Example 2 from:
#    Bard, J. F., & Falk, J. E. (1982).
#    An explicit solution to the multi-level programming problem.
#    Computers & Operations Research, 9(1), 77-100.
#
# Optimal solution:
#   F* = -3.25
#   f* = -4.0
#   x* = (2.0, 0.0)
#   y* = (1.5, 0.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       0       0       3       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding wiki website at:
#    http://basblsolver.github.io/test-problems/LP-LP/bf_1982_02
# ==============================================================================
var x{1..2} >= 0, <= 10;   # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..7} >= 0, <= 10;   # KKT Multipliers

minimize outer_obj: -2*x[1] + x[2] + 0.5*y[1];  # Outer objective

subject to
# Inner objective:
    inner_obj: x[1] + x[2] - 4*y[1] + y[2] = 0;
# Inner constraints
    inner_con1: -2*x[1] + y[1] - y[2] + 2.5 <= 0;
    inner_con2: x[1] - 3*x[2] + y[2] - 2 <= 0;
    inner_con3: x[1] + x[2] - 2 <= 0;
# KKT conditions:
    stationarity_1:   -4 + l[1] - l[3] + l[4] = 0;
    stationarity_2:    1 - l[1] + l[2] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(-2*x[1] + y[1]  - y[2] + 2.5) = 0;
    complementarity_2: l[2]*(x[1] - 3*x[2] + y[2] - 2) = 0;
    complementarity_3: l[3]*(x[1] + x[2] - 2) = 0;
    complementarity_4: l[4]*y[1] = 0;
    complementarity_5: l[5]*(y[1] - 10) = 0;
    complementarity_6: l[6]*y[2] = 0;
    complementarity_7: l[7]*(y[2] - 10) = 0;
