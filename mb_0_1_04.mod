# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_0_1_04.mod
#
# Source:
#   Example 3.4 from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 1.0, f* = -1.0 at (y*) = (1.0)
#
# ---------------------------- Problem Properties ------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   0          1
# Number of constraints: 0          0
# ==============================================================================
var y >= -0.5, <= 1;      # Inner variables
var l{1..2} >= 0, <= 2;   # KKT Multipliers

minimize outer_obj: y;    # Outer objective

subject to
# Inner objective:
    inner_obj: -y^2 = 0;
# KKT conditions:
    stationarity: -2*y - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-0.5 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
