# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_0_1_03.mod
#
# Source:
#   Example 3.3 from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = -1.0, f* = 1.0 at (y*) = (-1.0)
#
# ---------------------------- Problem Properties ------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   0          1
# Number of constraints: 0          1
# ==============================================================================
var y >= -10, <= 10;      # Inner variable
var l{1..3} >= 0, <= 2;   # KKT Multipliers

minimize outer_obj: y;    # Outer objective

subject to
# Inner objective:
    inner_obj: y^2 = 0;
# Inner constraints
    inner_con: 1 - y^2 <= 0;
# KKT conditions
    stationarity: 2*y - 2*y*l[1] - l[2] + l[3] = 0;
    complementarity_1: l[1]*(1 - y^2) = 0;
    complementarity_2: l[2]*(-10 - y) = 0;
    complementarity_3: l[3]*(y - 10) = 0;
