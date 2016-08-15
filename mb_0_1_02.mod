# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_0_1_02.mod
#
# Source:
#   Example 3.2 from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   Infeasible problem
#
# ---------------------------- Problem Properties ------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   0          1
# Number of constraints: 1          0
# ==============================================================================
var y >= -1, <= 1;        # Inner variable(s)
var l{1..2} >= 0, <= 2;   # Multiplier(s)

minimize outer_obj: y;    # Outer objective

subject to
# Outer constraints:
    outer_con: y <= 0;
# Inner objective:
    inner_obj: -y = 0;
# KKT conditions:
    stationarity:      -1 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
