# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   a_1999_01.mod
#
# Source: Example 2 from: Amouzegar, M. A. (1999).
# A global optimization method for nonlinear bilevel programming problems.
# IEEE Transactions on Systems, Man, and Cybernetics, Part B (Cybernetics), 29(6), 771-777.
#
#  www.bilevel.org: Problem TP3
#  A. Sinha and K. Deb, “Standard Test Problems for Single-Objective Bilevel
#  Optimization,” pp. 1–4.
#
# Optimal solution:
#   F* = -18.687
#   f* = -1.016
#   x* = (0.0, 2.0)
#   y* = (0.909, 1.878)
#
# NOTE:
#   In the original paper non-globally optimal solution is reported:
#   F = -12.68, f = -1.016 at (x, y) = (0.0, 2.0, 1.875, 0.9063)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       1       0       2       0
# ==============================================================================
var x{1..2} >= 0, <= 10;   # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..6} >= 0, <= 100;  # KKT Multipliers

minimize outer_obj: -x[1]^2 - 3*x[2]^2 - 4*y[1] + y[2]^2;   # Outer objective

subject to
# Outer constraints
    outer_con: x[1]^2 + 2*x[2] - 4 <= 0;
# Inner objective:
    inner_obj:  2*x[1]^2 + y[1]^2 - 5*y[2] = 0;
# Inner constraints
    inner_con1: -x[1]^2 + 2*x[1] - x[2]^2 + 2*y[1] - y[2] - 3 <= 0;
    inner_con2: -x[2] - 3*y[1] + 4*y[2] + 4 <= 0;
# KKT conditions:
    stationarity_1:    2*y[1] + 2*l[1] -3*l[2] - l[3] + l[4] = 0;
    stationarity_2:    -5 - l[1] + 4*l[2] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(-x[1]^2 + 2*x[1] - x[2]^2 + 2*y[1] - y[2] -3) = 0;
    complementarity_2: l[2]*(-x[2] - 3*y[1] + 4*y[2] + 4) = 0;
    complementarity_3: l[3]*y[1] = 0;
    complementarity_4: l[4]*(y[1] - 10) = 0;
    complementarity_5: l[5]*y[2] = 0;
    complementarity_6: l[6]*(y[2] - 10) = 0;
