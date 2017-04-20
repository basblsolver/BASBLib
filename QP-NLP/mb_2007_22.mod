# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_22.mod
#
# Original source:
# - Example 3.22 (mb_1_1_15) in:
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.210
#   f* = -0.069
#   x* = -0.555
#   y* = 0.455
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/mb_2007_22
# ==============================================================================
var x >= -1, <= 1;        # Outer variables
var y >= -1, <= 1;        # Inner variables
var l{1..3} >= 0, <= 10;  # KKT Multipliers

# Outer objective:
minimize outer_obj: (x + 0.6)^2 + y^2;

subject to
# Inner objective:
    inner_obj: y^4 + (4/30)*(-x+1)*y^3 + (-0.02*x^2+0.16*x-0.4)*y^2 + (0.004*x^3-0.036*x^2+0.08*x)*y = 0;
# Inner constraints:
    inner_con: 0.01*(1+x^2) - y^2 <= 0;
# KKT conditions:
    stationarity:      0.004*x^3-0.036*x^2+0.08*x + (-0.04*x^2+0.32*x-0.8-2*l[3])*y + (-0.4*x+0.4)*y^2 + 4*y^3 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
    complementarity_3: l[3]*(0.01*(1+x^2) - y^2) = 0;
