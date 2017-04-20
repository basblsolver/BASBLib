# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   sib_1997_01.mod
#
# Original source:
# - Example 15.3.1 in:
#   K. Shimizu, Y. Ishizuka, and J. F. Bard, Nondifferentiable and Two-Level
#   Mathematical Programming, vol. 102, Kluwer Academic Publishers, Boston, 1997
#
# Optimal solution:
#   F* = 2250.0
#   f* = 194.80
#   x* = 11.25
#   y* = 5.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       1       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/sib_1997_01
# ==============================================================================
var x >= 0, <= 12.5;       # Outer variables
var y >= 0, <= 50;         # Inner variables
var l{1..3} >= 0, <= 200;  # KKT Multipliers

# Outer objective:
minimize outer_obj: 16*x^2 + 9*y^2;

subject to
# Outer constraints:
    outer_con1:  -4*x + y <= 0;
# Inner objective:
    inner_obj: (x + y -20)^4 = 0;
# Inner constraints:
    inner_con1: 4*x + y -50 <= 0;
# KKT conditions:
    stationarity:      3*(x + y -20)^3 + l[1] - l[2] + l[3] = 0;
    complementarity_1: l[1]*(4*x + y -50) = 0;
    complementarity_2: l[2]*y = 0;
    complementarity_3: l[3]*(y - 50) = 0;
