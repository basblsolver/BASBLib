# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   fl_1995_01.mod
#
# Original source:
#  - Second example in: 
#    Falk, J. E., & Liu, J. (1995). On bilevel programming,
#    Part I: general nonlinear cases. Mathematical Programming, 70(1-3), 47-72.
#
# Optimal solution:
#   F* = -2.25
#   f* = 0.0
#   x* = (0.75, 0.75)
#   y* = (0.75, 0.75)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       0       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-QP/fl_1995_01
# ==============================================================================
var x{1..2} >= 0, <= 10;     # Outer variable
var y{1..2} >= 0.5, <= 1.5;  # Inner variable
var l{1..4} >= 0, <= 10;     # KKT Multipliers

# Outer objective:
minimize outer_obj: x[1]^2 - 3*x[1] + x[2]^2 - 3*x[2] + y[1]^2 + y[2]^2;

subject to
# Inner objective:
    inner_obj: (y[1] - x[1])^2 + (y[2] - x[2])^2 = 0;
# KKT conditions:
    stationarity_1:    2*(y[1] - x[1]) - l[1] + l[2] = 0;
    stationarity_2:    2*(y[2] - x[2]) - l[3] + l[4] = 0;
    complementarity_1: l[1]*(-y[1] + 0.5) = 0;
    complementarity_2: l[2]*(y[1] - 1.5) = 0;
    complementarity_3: l[3]*(-y[2] + 0.5) = 0;
    complementarity_4: l[4]*(y[2] - 1.5) = 0;
