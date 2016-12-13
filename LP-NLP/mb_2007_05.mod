# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_05.mod
#
# Source:
#   Example 3.5 (mb_0_1_05) from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.5
#   f* = -1.0
#   y* = 0.5
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   0       1       0       0       0       0
# ==============================================================================
var y >= -1, <= 1;        # Inner variables
var l{1..2} >= 0, <= 2;   # KKT Multipliers

minimize outer_obj: y;    # Outer objective

subject to
# Inner objective:
    inner_obj: 16*y^4 + 2*y^3 - 8*y^2 - 1.5*y + 0.5 = 0;
# KKT conditions
    stationarity:      64*y^3 + 6*y^2 - 16*y - 1.5 - l[1] + l[2] = 0;
    complementarity_2: l[1]*(-1 - y) = 0;
    complementarity_3: l[2]*(y - 1) = 0;








