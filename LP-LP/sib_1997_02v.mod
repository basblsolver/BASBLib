# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   sib_1997_02v.mod
#
# Original source:
# - Variation of sib_1997_02
#
# Optimal solution:
#   F* = -12.0
#   f* = 4.0
#   x* = 4.0
#   y* = 4.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       4       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-LP/sib_1997_02v
# ==============================================================================
var x >= 0, <= 10;         # Outer variable
var y >= 0, <= 10;         # Inner variable
var l{1..6} >= 0, <= 10;   # KKT Multipliers

# Outer objective:
minimize outer_obj: x - 4*y; 

subject to
# Inner objective:
    inner_obj: y = 0;
# Inner constraints:
    inner_con1: -x - y + 3 <= 0;
    inner_con2: -2*x + y <= 0;
    inner_con3: 2*x + y - 12 <= 0;
    inner_con4: 3*x - 2*y - 4 <= 0;
# KKT conditions:
    stationarity:      1 - l[1] + l[2] + l[3] - 2*l[4] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(-x - y + 3) = 0;
    complementarity_2: l[2]*(-2*x + y) = 0;
    complementarity_3: l[3]*(2*x + y - 12) = 0;
    complementarity_4: l[4]*(3*x - 2*y - 4) = 0;
    complementarity_5: l[5]*y = 0;
    complementarity_6: l[6]*(y - 10) = 0;
