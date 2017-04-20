# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_20.mod
#
# Source:
#   Example 3.20 (mb_1_1_13) in:
#   A. Mitsos and P. I. Barton, (2007) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.313
#   f* = -0.083
#   x* = 0.5
#   y* = 0.5
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/mb_2007_20
# ==============================================================================
var x >= -1, <= 1;       # Outer variables
var y >= -1, <= 1;       # Inner variables
var l{1..2} >= 0, <= 2;  # Multipliers

# Outer objective:
minimize outer_obj: (x - 0.25)^2 + y^2;

subject to
# Inner objective:
    inner_obj: -x^2*y + y^3/3 = 0;
# KKT conditions:
    stationarity:      -x^2 + y^2 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
