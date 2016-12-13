# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   yezza_1996_2.mod
#
# Source: Example 3.1 from: Yezza, A. (1996). First-order necessary optimality
#  conditions for general bilevel programming problems.
#  Journal of Optimization Theory and Applications, 89(1), 189-219.
#
# Optimal solution:
#   F* = 1.5
#   f* = -2.5
#   x* = 0.25
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ==============================================================================
var x >= 0, <= 1;         # Outer variable
var y >= 0, <= 1;         # Inner variable
var l{1..5} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: -(4*x - 3)*y + 2*x + 1;  # Outer objective

subject to
# Inner objective:
    inner_obj: -(1 - 4*x)*y - 2*x -2 = 0;
# KKT conditions:
    stationarity:      4*x - 1 = 0;
    complementarity_1: l[1]*y = 0;
    complementarity_2: l[2]*(y - 1) = 0;
