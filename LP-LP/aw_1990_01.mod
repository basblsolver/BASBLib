# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   aw_1990_01.mod
#
# Source: Example from:
#  Anandalingam, G., & White, D.J. (1990).
#  A solution method for the linear static Stackelberg problem using penalty
#  functions. IEEE Transactions on Automatic Control, 35(10), 1170-1173.
#
# Optimal solution:
#   F* = -49.000
#   f* = 17.000
#   x* = 16.000
#   y* = 11.000
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       5       0
# ==============================================================================
var x >= 0, <= 50;         # Outer variable
var y >= 0, <= 50;         # Inner variable
var l{1..7} >= 0, <= 10;   # KKT Multipliers

minimize outer_obj: -x - 3*y;  # Outer objective

subject to
# Inner objective:
    inner_obj: -x + 3*y = 0;
# Inner constraints
    inner_con1:    -x - 2*y + 10 <= 0;
    inner_con2:     x - 2*y - 6 <= 0;
    inner_con3:     2*x - y - 21 <= 0;
    inner_con4:     x + 2*y - 38 <= 0;
    inner_con5:     -x + 2*y - 18 <= 0;
# KKT conditions:
    stationarity:    3 - 2*l[1] - 2*l[2] - l[3] + 2*l[4] + 2*l[5] - l[6] + l[7]= 0;
    complementarity_1: l[1]*(-x - 2*y + 10) = 0;
    complementarity_2: l[2]*(x - 2*y - 6) = 0;
    complementarity_3: l[3]*(2*x - y - 21) = 0;
    complementarity_4: l[4]*(x + 2*y - 38) = 0;
    complementarity_5: l[5]*(-x + 2*y - 18) = 0;
    complementarity_6: l[6]*y = 0;
    complementarity_7: l[7]*(y - 50) = 0;
