# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_17.mod
#
# Source:
#   Example 3.17 (mb_1_1_10) from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 0.1875
#   f* = -0.016
#   x* = -0.25 and -0.25
#   y* =   0.5 and -0.5
#
# --------------------------------- Properties ---------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   1          1
# Number of constraints: 0          0
# ==============================================================================
var x >= -1, <= 1;       # Outer variable
var y >= -1, <= 1;       # Inner variable
var l{1..2} >= 0, <= 2;  # Multipliers

minimize outer_obj: (x + 0.5)^2 + 0.5*y^2;

subject to
# Inner objective
    inner_obj: 0.5*x*y^2 + y^4/4 = 0;
# KKT conditions
    stationarity:      x*y + y^3 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;










