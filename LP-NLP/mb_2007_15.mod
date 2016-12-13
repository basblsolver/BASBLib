# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_15.mod
#
# Source:
#   Example 3.15 (mb_1_1_08) from
#   A. Mitsos and P. I. Barton, (2007) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.0
#   f* = -0.83
#   x* = -1.0
#   y* = 1.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ==============================================================================
var x >= -1, <= 1;       # Outer variable
var y >= -1, <= 1;       # Inner variable
var l{1..2} >= 0, <= 2;  # Multipliers

minimize outer_obj: x + y;

subject to
# Inner objective
    inner_obj: 0.5*x*y^2 - y^3/3 = 0;
# KKT conditions
    stationarity:      x*y - y^2 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;











