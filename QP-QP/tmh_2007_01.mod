# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   tmh_2007.mod
#
# Source:
# Example 1 from: Tuy, H., Migdalas, A., & Hoai-Phuong, N. T. (2007).
# A novel approach to bilevel nonlinear programming.
# Journal of Global Optimization, 38(4), 527-554.
#
# Optimal solution:
#   F* = 22.5
#   f* = -4.5
#   x* = 1.5
#   y* = 4.5
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       3       0
# ==============================================================================
var x >= 0, <= 10;         # Outer variable
var y >= 0, <= 10;         # Inner variable
var l{1..5} >= 0, <= 10;   # KKT Multipliers

minimize outer_obj: x^2 + y^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: -y = 0;
# Inner constraints
    inner_con1:     3*x + y - 15 <= 0;
    inner_con2:     x + y - 7 <= 0;
    inner_con3:     x + 3*y - 15 <= 0;
# KKT conditions:
    stationarity:      -1 + l[1] + l[2] + 3*l[3] - l[4] + l[5] = 0;
    complementarity_1: l[1]*(3*x + y - 15) = 0;
    complementarity_2: l[2]*(x + y - 7) = 0;
    complementarity_3: l[3]*(x + 3*y - 15) = 0;
    complementarity_4: l[4]*y = 0;
    complementarity_5: l[5]*(y - 10) = 0;
