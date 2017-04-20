# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_08.mod
#
# Original source:
# - Example 3.8 (mb_1_1_01) in:
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.0
#   f* = 0.0
#   x* = -0.567
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       2       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/mb_2007_08
# ==============================================================================
var x >= -1, <= 1;          # Outer variables
var y >= -1, <= 1;          # Inner variables
var l{1..2} >= 0, <= 5;     # KKT Multipliers

# Outer objective:
minimize outer_obj: (x-x)^2 + y^2;  

subject to
# Outer constraints:
    outer_con1:  y <= 0.1;
    outer_con2: -y <= 0.1;
# Inner objective:
    inner_obj: x*y + exp(x)*y = 0;
# KKT conditions:
    stationarity:      x + exp(x) - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
