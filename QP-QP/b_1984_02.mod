# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   b_1984_02.mod
#
# Original source:
# - Example 2 in:
#   J. F. Bard, Optimality conditions for the bilevel programming problem,
#   Naval research logistics quarterly, 31 (1984), pp. 13–26
#
# Optimal solution:
#   F* = -18.687
#   f* = -1.016
#   x* = (0.0, 2.0)
#   y* = (0.909, 1.878)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       1       0       2       0
# ------------------------------------------------------------------------------
#                
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-QP/b_1984_02
# ==============================================================================
var x{1..2} >= 0, <= 10;   # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..6} >= 0, <= 100;  # KKT Multipliers

# Outer objective:
minimize outer_obj: -x[1]^2 - 3*x[2]^2 - 4*y[1] + y[2]^2;  

subject to
# Outer constraints:
    outer_con: x[1]^2 + 2*x[2] - 4 <= 0;
# Inner objective:
    inner_obj:  2*x[1]^2 + y[1]^2 - 5*y[2] = 0;
# Inner constraints:
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
