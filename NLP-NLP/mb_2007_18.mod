# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_18.mod
#
# Source:
#   Example 3.18 (mb_1_1_11) from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.25
#   f* = 0.0
#   x* = 0.5
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ==============================================================================
var x >= -1, <= 1;       # Outer variable
var y >= -1, <= 1;       # Inner variable
var l{1..2} >= 0, <= 2;  # Multipliers

minimize outer_obj: x^2 + y^2;

subject to
# Inner objective
    inner_obj: x*y^2 - y^4/2 = 0;
# KKT conditions
    stationarity:      2*x*y - 2*y^3 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
