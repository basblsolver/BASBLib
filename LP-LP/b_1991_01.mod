# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   b_1991_01.mod
#
# Original source:
# - Example 2.2 in:
#   Bard, J. F. (1991). Some properties of the bilevel programming problem.
#   Journal of optimization theory and applications, 68(2), 371-378.
#
# Optimal solutions:
#   F* = -1.000          ;   F* = -1.000
#   f* = 0.000           ;   f* = -1.000
#   x* = 1.000           ;   x* = 0.000
#   y* = (0.000, 0.000)  ;   y* = (0.000, 1.000)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       3       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-LP/b_1991_01
# ==============================================================================
var x >= 0, <= 10;         # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..7} >= 0, <= 10;   # KKT Multipliers

# Outer objective:
minimize outer_obj: -x + 10*y[1] - y[2];  

subject to
# Inner objective:
    inner_obj: -y[1] - y[2] = 0;
# Inner constraints:
    inner_con1:     x + y[1] - 1 <= 0;
    inner_con2:     x + y[2] - 1 <= 0;
    inner_con3:     y[1] + y[2] - 1 <= 0;
# KKT conditions:
    stationarity_1:    -1 + l[1] + l[3] - l[4] + l[5] = 0;
    stationarity_2:    -1 + l[2] + l[3] - l[6] + l[7] = 0;
    complementarity_1: l[1]*(x + y[1] - 1) = 0;
    complementarity_2: l[2]*(x + y[2] - 1) = 0;
    complementarity_3: l[3]*(y[1] + y[2] - 1) = 0;
    complementarity_4: l[4]*y[1] = 0;
    complementarity_5: l[5]*(y[1] - 10) = 0;
    complementarity_6: l[6]*y[2] = 0;
    complementarity_7: l[7]*(y[2] - 10) = 0;
