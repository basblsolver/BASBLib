# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   c_2002_01.mod
#
# Original source:
#  - BIPA1 problem in: B. Colson, BIPA(BIlevel Programming with Approximation 
#  	 Methods)(software guide and test problems), Cahiers du GERAD, (2002)
#
# Optimal solution:
#   F* = 227.691
#   f* = 0.0
#   x* = 6.082 
#   y* = 4.487
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       1       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding website at:
#   http://basblsolver.github.io/test-problems/NLP-NLP/c_2002_01
# ==============================================================================

var x >= 0, <= 15;         # Outer variable
var y >= 0, <= 20;         # Inner variable
var l{1..3} >= 0, <= 100;  # KKT Multipliers

minimize outer_obj: (10 - x)^3 + (10 - y)^3;  # Outer objective

subject to
# Outer constraints
    outer_con:  -x + y <= 0;
# Inner objective:
    inner_obj: (x + 2*y - 15)^4 = 0;
# Inner constraints
    inner_con:   x + y - 20 <= 0;
# KKT conditions:
    stationarity:      8*(x + 2*y - 15)^3 + l[1] - l[2] + l[3] = 0;
    complementarity_1: l[1]*(x + y - 20) = 0;
    complementarity_2: l[2]*y = 0;
    complementarity_3: l[3]*(y - 20) = 0;
