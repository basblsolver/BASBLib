# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   c_2002_04.mod
#
# Original source:
#  - BIPA4 problem in: B. Colson, BIPA(BIlevel Programming with Approximation 
#  	 Methods)(software guide and test problems), Cahiers du GERAD, (2002)
#
# Optimal solution:
#   F* = 88.754
#   f* = -0.770
#   x* = 0.000
#   y* = 0.579
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       1       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/c_2002_04
# ==============================================================================
var x >= 0, <= 10;          # Outer variable
var y >= 0, <= 10;          # Inner variable
var l{1..3} >= 0, <= 100;   # KKT Multipliers

# Outer objective:
minimize outer_obj: x^2 + (y - 10)^2;  

subject to
# Outer constraints:
    outer_con:  x + 2*y - 6 <= 0;
# Inner objective:
    inner_obj: - x^2 + x^3 + 2*y^3 + x - 2*y = 0;
# Inner constraints:
    inner_con:    -x + 2*y - 3 <= 0;
# KKT conditions:
    stationarity:      6*y^2 - 2 + 2*l[1] - l[2] + l[3] = 0;
    complementarity_1: l[1]*(-x + 2*y - 3) = 0;
    complementarity_2: l[2]*y = 0;
    complementarity_3: l[3]*(y - 10) = 0;
