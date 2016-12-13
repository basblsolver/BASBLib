# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   b_1991_02.mod
#
# Source: Example 2.1. from:
#  Bard, J. F. (1991). Some properties of the bilevel programming problem.
#  Journal of optimization theory and applications, 68(2), 371-378.
#
#  Example 8.1.1 in (Bard, 1998)
#
# Optimal solution:
#   F* = 2.0
#   f* = 12.0
#   x* = 2.0
#   y* = (6.0, 0.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       1       0
# ==============================================================================
var x >= 2, <= 4;          # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..5} >= 0, <= 100;  # KKT Multipliers

minimize outer_obj: x + y[2];  # Outer objective

subject to
# Inner objective:
    inner_obj:      2*y[1] + x*y[2] = 0;
# Inner constraints
    inner_con:      x - y[1] - y[2] + 4 <= 0;
# KKT conditions:
    stationarity_1:    2 - l[1] - l[2] + l[3] = 0;
    stationarity_2:    x - l[1] - l[4] + l[5] = 0;
    complementarity_1: l[1]*(x - y[1] - y[2] + 4) = 0;
    complementarity_4: l[2]*y[1] = 0;
    complementarity_5: l[3]*(y[1] - 10) = 0;
    complementarity_6: l[4]*y[2] = 0;
    complementarity_7: l[5]*(y[2] - 10) = 0;
