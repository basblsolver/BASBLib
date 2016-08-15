# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_1_1_05.mod
#
# Source:
#   Example 3.12 from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.0, f* = 0.0 at (x*,y*) = (0.0,0.0)
#
# --------------------------------- Properties ---------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   1          1
# Number of constraints: 0          0
# ==============================================================================
var x >= -1, <= 1;       # Outer variables
var y >= -1, <= 1;       # Inner variables
var l{1..2} >= 0, <= 2;  # KKT Multipliers

minimize outer_obj: -x + x*y + 10*y^2;

subject to
# Inner objective
    inner_obj: -x*y^2 + 0.5*y^4 = 0;
# KKT conditions
    stationarity:      -2*x*y + 2*y^3 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
