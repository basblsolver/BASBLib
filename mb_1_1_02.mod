# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_1_1_02.mod
#
# Source:
#   Example 3.9 from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = -1.0, f* = -1.0 at (x*,y*) = (-1.0, -1.0)
#
# --------------------------------- Properties ---------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   1          1
# Number of constraints: 1          0
# ==============================================================================
var x >= -10, <= 10;        # Outer variables
var y >= -1, <= 1;          # Inner variables
var l{1..2} >= 0, <= 10;    # KKT Multipliers

minimize outer_obj: x;      # Outer objective

subject to
# Outer constraints:
    outer_con: -x + y <= 0;
# Inner objective:
    inner_obj: (x-x)^3 + y^3 = 0;  # Added trick (x-x)^3 to avoid AMPL variables reordering
# KKT conditions:
    stationarity:      3*y^2 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
