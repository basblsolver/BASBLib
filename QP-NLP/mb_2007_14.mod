# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_14.mod
#
# Source:
#   Example 3.14 (mb_1_1_07) from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.25
#   f* = -0.083
#   x* = 0.25
#   y* = 0.5
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ==============================================================================
var x >= -1, <= 1;        # Outer variables
var y >= -1, <= 1;        # Inner variables
var l{1..2} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: (x - 0.25)^2 + y^2;

subject to
# Inner objective:
    inner_obj: y^3/3 - x*y = 0;
# KKT conditions:
    stationarity:      y^2 - x - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
