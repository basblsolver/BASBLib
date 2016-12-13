# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   cw_1990_02.mod
#
# Source:
#   From Sect. 3.2. Nonconvexity from:
#   Clark, P. A., Westerberg, A. W. (1990).
#   Bilevel programming for steady-state chemical process design—I. fundamentals and algorithms.
#   Computers & Chemical Engineering, 14(1), 87-97.
#
# Optimal solution:
#   F* = 5.0
#   f* = 4.0
#   x* = 1.0
#   y* = 3.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       3       0
# ==============================================================================
var x >= 0, <= 8;           # Outer variable
var y >= 0, <= 8;           # Inner variable
var l{1..5} >= 0, <= 10;    # KKT Multipliers

minimize outer_obj: (x-3)^2 + (y-2)^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: (y - 5)^2 = 0;
# Inner constraints
    inner_con1:  -2*x + y - 1 <= 0;
    inner_con2:   x - 2*y + 2 <= 0;
    inner_con3:   x + 2*y - 14 <= 0;
# KKT conditions:
    stationarity:      2*(y - 5) + l[1] - 2*l[2] + 2*l[3] - l[4] + l[5] = 0;
    complementarity_1: l[1]*(-2*x + y - 1) = 0;
    complementarity_2: l[2]*(x - 2*y + 2) = 0;
    complementarity_3: l[3]*(x + 2*y - 14) = 0;
    complementarity_4: l[4]*y = 0;
    complementarity_5: l[5]*(y - 8) = 0;
