# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_06.mod
#
# Source:
#   Example 3.6 (mb_0_1_06) from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = -1.0
#   f* = -1.0
#   y* = -1.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   0       1       0       0       0       0
# ==============================================================================
var y >= -1, <= 1;         # Inner variables
var l{1..2} >= 0, <= 10;   # KKT Multipliers

minimize outer_obj: y;    # Outer objective

subject to
# Inner objective:
    inner_obj: y^3 = 0;
# KKT conditions:
    stationarity:      3*y^2 - l[1] + l[2] = 0;
    complementarity_2: l[1]*(-1 - y) = 0;
    complementarity_3: l[2]*(y - 1) = 0;










