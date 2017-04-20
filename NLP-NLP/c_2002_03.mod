# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   c_2002_03.mod
#
# Original source:
#  - BIPA3 problem in: B. Colson, BIPA(BIlevel Programming with Approximation 
#  	 Methods)(software guide and test problems), Cahiers du GERAD, (2002)
#
# Optimal solution:
#   F* = 2.0
#   f* = 24.018
#   x* = 4.0
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       1       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/NLP-NLP/c_2002_03
# ==============================================================================
var x >= 0, <= 10;          # Outer variable
var y >= 0, <= 10;          # Inner variable
var l{1..3} >= 0, <= 100;   # KKT Multipliers

# Outer objective:
minimize outer_obj: (x - 5)^4 + (2*y + 1)^4;  

subject to
# Outer constraints:
    outer_con:  x + y - 4 <= 0;
# Inner objective:
    inner_obj: exp(-x+y) + x^2 + 2*x*y + y^2 + 2*x + 6*y = 0;
# Inner constraints:
    inner_con:    -x + y - 2 <= 0;
# KKT conditions:
    stationarity:      exp(-x+y) + 2*x + 2*y + 6 + l[1] - l[2] + l[3] = 0;
    complementarity_1: l[1]*(-x + y - 2) = 0;
    complementarity_2: l[2]*y = 0;
    complementarity_3: l[3]*(y - 10) = 0;
