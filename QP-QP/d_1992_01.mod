# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   d_1992_01.mod
#
# Original source:
#  - Example 4.1 in
#    Dempe, S. (1992). A necessary and a sufficient optimality condition for 
#    bilevel programming problems. Optimization, 25(4), 341-354.
#
# Optimal solution:
#   F* = 31.25
#   f* = 4.00
#   x* = 1.00
#   y* = 1.00
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-QP/d_1992_01
# ==============================================================================
var x >= 1, <= 10;         # Outer variables
var y >= 1, <= 10;         # Inner variables
var l{1..3} >= 0, <= 100;  # KKT Multipliers

# Outer objective:
minimize outer_obj: (x - 3.5)^2 + (y + 4)^2; 

subject to
# Inner objective:
    inner_obj: (y - 3)^2 = 0;
# Inner constraints:
    inner_con: y^2 - x <= 0;
# KKT conditions:
    stationarity:      2*(y - 3) + 2*y*l[1] - l[2] + l[3] = 0;
    complementarity_1: l[1]*(y^2 - x) = 0;
    complementarity_2: l[2]*(-y - 1) = 0;
    complementarity_3: l[3]*(y - 10) = 0;
