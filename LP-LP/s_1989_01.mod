# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   s_1989_01.mod
#
# Original source:
# - Savard, G. (1989).
#   Contribution à la programmation mathématique à deux niveaux
#   PhD thesis, Ecole Polytechnique, Universit6 de Montreal
#
# Optimal solution:
#   F* = -14.6,
#   f* = 0.30
#   x* = (0.000, 0.650)
#   y* = (0.000, 0.300, 0.000)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       3       1       0       3       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-LP/s_1989_01
# ==============================================================================
var x{1..2} >= 0, <= 10;   # Outer variable
var y{1..3} >= 0, <= 10;   # Inner variable
var l{1..9} >= 0, <= 10;   # KKT Multipliers

# Outer objective:
minimize outer_obj: -8*x[1] - 4*x[2] + 4*y[1] - 40*y[2] + 4*y[3];

subject to
# Outer constraints:
    outer_con1: x[1] + 2*x[2] - y[3] - 1.3 <= 0;
# Inner objective:
    inner_obj: 2*y[1] + y[2] + 2*y[3] = 0;
# Inner constraints:
    inner_con1: -y[1]  + y[2] + y[3] - 1 <= 0;
    inner_con2: 4*x[1] - 2*y[1] + 4*y[2] - y[3] - 2 <= 0;
    inner_con3: 4*x[2] + 4*y[1] - 2*y[2] - y[3] - 2 <= 0;
# KKT conditions:
    stationarity_1:    2 - l[1] - 2*l[2] + 4*l[3] - l[4] + l[5] = 0;
    stationarity_2:    1 + l[1] + 4*l[2] - 2*l[3] - l[6] + l[7] = 0;
    stationarity_3:    2 + l[1] - l[2] - l[3] - l[8] + l[9] = 0;
    complementarity_1: l[1]*(-y[1]  + y[2] + y[3] - 1) = 0;
    complementarity_2: l[2]*(4*x[1] - 2*y[1] + 4*y[2] - y[3] - 2) = 0;
    complementarity_3: l[3]*(4*x[2] + 4*y[1] - 2*y[2] - y[3] - 2) = 0;
    complementarity_4: l[4]*y[1] = 0;
    complementarity_5: l[5]*(y[1] - 10) = 0;
    complementarity_6: l[6]*y[2] = 0;
    complementarity_7: l[7]*(y[2] - 10) = 0;
    complementarity_8: l[8]*y[3] = 0;
    complementarity_9: l[9]*(y[3] - 10) = 0;
