# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   lh_1994_01.mod
#
# Original source:
# - Liu, Y. H., & Hart, S. M. (1994). Characterizing an optimal solution
#   to the linear bilevel programming problem.
#   European Journal of Operational Research, 73(1), 164-166.
#
# Optimal solution:
#   F* = -16.0
#   f* = 4.0
#   x* = 4.0
#   y* = 4.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       3       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding wiki website at:
#    https://github.com/basblsolver/test-problems/wiki/lh_1994_01
# ==============================================================================

var x >= 0, <= 10;          # Outer variable
var y >= 0, <= 10;          # Inner variable
var l{1..5} >= 0, <= 10;    # KKT Multipliers

minimize outer_obj: -x - 3*y;  # Outer objective

subject to
# Inner objective:
    inner_obj: y = 0;
# Inner constraints
    inner_con1:  -x + y - 3 <= 0;
    inner_con2:   x + 2*y - 12 <= 0;
    inner_con3:   4*x - y - 12 <= 0;
# KKT conditions:
    stationarity:      1 + l[1] + 2*l[2] - l[3] - l[4] + l[5] = 0;
    complementarity_1: l[1]*(-x + y - 3) = 0;
    complementarity_2: l[2]*(x + 2*y - 12) = 0;
    complementarity_3: l[3]*(4*x - y - 12) = 0;
    complementarity_4: l[4]*y = 0;
    complementarity_5: l[5]*(y - 10) = 0;
