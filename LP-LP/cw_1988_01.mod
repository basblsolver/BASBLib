# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   cw_1988_01.mod
#
# Original source:
#   Clark, P. A., & Westerberg, A. W. (1988).
#   A note on the optimality conditions for the bilevel programming problem.
#   Naval Research Logistics (NRL), 35(5), 413-418.
#
# Optimal solution:
#   F* = -37.0
#   f* = 14.0
#   x* = 19.0
#   y* = 14.0
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       3       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding wiki website at:
#    http://basblsolver.github.io/test-problems/LP-LP/cw_1988_01
# ==============================================================================

var x >= 0, <= 30;         # Outer variable
var y >= 0, <= 30;         # Inner variable
var l{1..5} >= 0, <= 10;    # KKT Multipliers

minimize outer_obj: x - 4*y;  # Outer objective

subject to
# Inner objective:
    inner_obj: y = 0;
# Inner constraints
    inner_con1:  -2*x + y <= 0;
    inner_con2:   2*x + 5*y - 108 <= 0;
    inner_con3:   2*x - 3*y + 4 <= 0;
# KKT conditions:
    stationarity:      1 + l[1] + 5*l[2] - 3*l[3] - l[4] + l[5] = 0;
    complementarity_1: l[1]*(-2*x + y) = 0;
    complementarity_2: l[2]*(2*x + 5*y - 108) = 0;
    complementarity_3: l[3]*(2*x - 3*y + 4) = 0;
    complementarity_4: l[4]*y = 0;
    complementarity_5: l[5]*(y - 30) = 0;
