# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   dd_2012_02.mod
#
# Source: Example 3.1 from Dempe, S., & Dutta, J. (2012).
#  Is bilevel programming a special case of a mathematical program with
#  complementarity constraints?. Mathematical programming, 131(1-2), 37-48.
#
# Optimal solution:
#   F* =
#   f* =
#   x* =
#   y* =
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       0       1       2       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-QP/dd_2012_02
# ==============================================================================
var x{1..2} >= 0,   <= 10;    # Outer variable
var y{1..2} >= -10, <= 10;    # Inner variable
var l{1..6} >= 0,   <= 200;   # KKT Multipliers

# Outer objective:
minimize outer_obj:    -y[2];  

subject to
# Outer constraints:
    outer_con_1:       y[1]*y[2] = 0;
# Inner objective:
    inner_obj:         y[1]^2 + (y[2] + 1)^2 = 0;
# Inner constraints:
    inner_con_1:       (y[1] - x[1])^2 + (y[2] - 1 - x[1])^2 - 1 <= 0;
    inner_con_2:       (y[1] + x[2])^2 + (y[2] - 1 - x[2])^2 - 1 <= 0;
# KKT conditions:
    stationarity_1:    2*y[1] + 2*l[1]*(y[1] - x[1]) + 2*l[2]*(y[1] + x[2]) - l[3] + l[4] = 0;
    stationarity_2:    2*(y[2] + 1) + 2*l[1]*(y[2] - 1 - x[1]) + 2*l[2]*(y[2] - 1 - x[2]) - l[5] + l[6] = 0;
    complementarity_1: l[1]*((y[1] - x[1])^2 + (y[2] - 1 - x[1])^2 - 1) = 0;
    complementarity_2: l[2]*((y[1] + x[2])^2 + (y[2] - 1 - x[2])^2 - 1) = 0;
    complementarity_3: l[3]*(-y[1] - 10) = 0;
    complementarity_4: l[4]*(y[1] - 10) = 0;
    complementarity_5: l[5]*(-y[2] - 10) = 0;
    complementarity_6: l[6]*(y[2] - 10) = 0;
