# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   as_1984_01.mod
#
# Original source:
# - Example 2 in:
#   Aiyoshi, E., & Shimizu, K. (1984). A solution method for the static
#   constrained Stackelberg problem via penalty method.
#   IEEE Transactions on Automatic Control, 29(12), 1111-1114.
#
#
# Optimal solution(s):
#   F* = 0.0                  F* = 0.0
#   f* = 100.0                f* = 200.0
#   x* = (0.0, 30.0)          x* = (0.0, 0.0)
#   y* = (-10.0, 10.0)        y* = (-10.0, -10.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       1       0       2       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding wiki website at:
#    http://basblsolver.github.io/test-problems/LP-LP/b_1984_01
# ==============================================================================

var x{1..2} >=   0, <= 50;    # Outer variable
var y{1..2} >= -10, <= 20;    # Inner variable
var l{1..6} >=   0, <= 100;   # KKT Multipliers

minimize outer_obj: 2*x[1] + 2*x[2] - 3*y[1] - 3*y[2] - 60;  # Outer objective

subject to
# Outer constraints
    outer_con:  x[1] + x[2] + y[1] - 2*y[2] - 40 <= 0;
# Inner objective:
    inner_obj: (y[1] - x[1] + 20)^2 + (y[2] - x[2] + 20)^2 = 0;
# Inner constraints
    inner_con1:    -x[1] + 2*y[1] + 10 <= 0;
    inner_con2:    -x[2] + 2*y[2] + 10 <= 0;
# KKT conditions:
    stationarity_1:    2*(y[1] - x[1] + 20) + 2*l[1] - l[3] + l[4] = 0;
    stationarity_2:    2*(y[2] - x[2] + 20) + 2*l[2] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(-x[1] + 2*y[1] + 10) = 0;
    complementarity_2: l[2]*(-x[2] + 2*y[2] + 10) = 0;
    complementarity_3: l[3]*(-y[1] - 10) = 0;
    complementarity_4: l[4]*(y[1] - 20) = 0;
    complementarity_5: l[5]*(-y[2] - 10) = 0;
    complementarity_6: l[6]*(y[2] - 20) = 0;
