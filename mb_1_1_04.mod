# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_1_1_04.mod
#
# Source:
#   Example 3.11 from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = -0.8, f* = 0.0 at (x*,y*) = (0.0, -0.8)
#
# --------------------------------- Properties ---------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   1          1
# Number of constraints: 0          0
# ==============================================================================
var x >= -1, <= 1;         # Outer variables
var y >= -0.8, <= 1;       # Inner variables
var l{1..2} >= 0, <= 100;  # KKT Multipliers

minimize outer_obj: y;     # Outer objective

subject to
# Inner objective:
    inner_obj: x*(16*y^4 + 2*y^3 - 8*y^2 - 1.5*y + 0.5) = 0;
# KKT conditions:
    stationarity:      x*(64*y^3 + 6*y^2 - 16*y - 1.5) - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-0.8 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
