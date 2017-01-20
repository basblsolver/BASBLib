# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   d_2000_01.mod
#
# Original source:
#  - Example 5.6 in
#    Dempe, S. (2000). A bundle algorithm applied to bilevel programming 
#    problems with non-unique lower level solutions. 
#    Computational Optimization and Applications, 15(2), 145-166.
#
# Optimal solution:
#   F* = 0.0
#   f* = -0.25
#   x* = 0.5
#   y* = -0.5
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       2       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding website at:
#   http://basblsolver.github.io/test-problems/QP-QP/d_2000_01
# ==============================================================================

var x >= -0.5, <= 10;     # Outer variables
var y >= -10, <= 11;      # Inner variables
var l{1..4} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: (-x + y + 1)^2;  # d > 0 fixed, so we use d = 1

subject to
# Inner objective
    inner_obj: x*y = 0;
# Inner constraints
    inner_con1: -x - y <= 0;
    inner_con2: -x + y -1 <= 0;
# KKT conditions
    stationarity:      x - l[1] + l[2] - l[3] + l[4] = 0;
    complementarity_1: l[1]*(-x - y) = 0;
    complementarity_2: l[2]*(-x + y - 1) = 0;
    complementarity_3: l[3]*(-10 - y) = 0;
    complementarity_4: l[4]*(y - 11) = 0;
