# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_16.mod
#
# Original source:
# - Example 3.16 (mb_1_1_09) from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = -2.0, f* = 0.0 at (x*,y*) = (-1.0,0.0) and (-0.5,-1.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-NLP/mb_2007_16
# ==============================================================================
var x >= -1, <= 1;       # Outer variable
var y >= -1, <= 1;       # Inner variable
var l{1..2} >= 0, <= 2;  # Multipliers

# Outer objective:
minimize outer_obj: 2*x + y;

subject to
# Inner objective:
    inner_obj: -0.5*x*y^2 - y^4/4 = 0;
# KKT conditions:
    stationarity:      -x*y - y^3 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;










