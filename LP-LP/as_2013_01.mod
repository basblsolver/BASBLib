# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   as_2013_01.mod
#
# Original source:
#  - Example 3.1 in:
#    Allende, G. B., & Still, G. (2013). Solving bilevel programs with
#    the KKT-approach. Mathematical programming, 138(1-2), 309-332.
#
# Optimal solution:
#   F* = 0.000
#   f* = 0.000
#   x* = 0.000
#   y* = 0.000
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       2       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding wiki website at:
#    https://github.com/basblsolver/test-problems/wiki/as_2013_01
# ==============================================================================

var x >= -10, <= 10;        # Outer variable
var y >= -10, <= 10;        # Inner variable
var l{1..4} >= 0, <= 10;    # KKT Multipliers

minimize outer_obj: -x - y;  # Outer objective

subject to
# Inner objective:
    inner_obj: y = 0;
# Inner constraints
    inner_con_1:  x - y <= 0;
    inner_con_2:  y <= 0;
# KKT conditions:
    stationarity:      1 - l[1] + l[2] - l[3] - l[4] = 0;
    complementarity_1: l[1]*(x - y) = 0;
    complementarity_2: l[2]*y = 0;
    complementarity_3: l[3]*(-y - 10) = 0;
    complementarity_4: l[4]*(y - 10) = 0;
