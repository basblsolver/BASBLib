# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_19.mod
#
# Original source:
# - Example 3.19 (mb_1_1_12) in:
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = -0.258
#   f* = -0.018
#   x* = 0.189
#   y* = 0.439
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/mb_2007_19
# ==============================================================================
var x >= -1, <= 1;       # Outer variables
var y >= -1, <= 1;       # Inner variables
var l{1..2} >= 0, <= 2;  # Multipliers

# Outer objective:
minimize outer_obj: x*y - y + 0.5*y^2;

subject to
# Inner objective:
    inner_obj:         -x*y^2 + y^4/2 = 0;
# KKT conditions:
    stationarity:      -2*x*y + 2*y^3 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;











