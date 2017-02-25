# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   gf_2001_4.mod
#
# Source:
#   Example 4 from
#   Gümüs, Z. H., Floudas, C. A., (2001). Global Optimization of Nonlinear
#   Bilevel Programming Problems. Journal of Global Optimization, 20(1), 1–31.
#   http://doi.org/10.1023/A:1011268113791
#
# Optimal solution:
#   F* = 9.0
#   f* = 0.0
#   x* = 3.0
#   y* = 5.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       3       0       0       0
# ==============================================================================
var x >= 0, <= 8;         # Outer variables
var y >= 0, <= 10;        # Inner variables
var l{1..2} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: (x-3)^2 + (y-2)^2;   # Outer objective

subject to
# Outer constraints:
    outer_con1:  -2*x + y - 1 <= 0;
    outer_con2:  x - 2*y + 2 <= 0;
    outer_con3:  x + 2*y -14 <= 0;
# Inner objective: To avoid AMPL variable reordering, added redundant (x-x)^2
    inner_obj: (y - 5)^2 + (x-x)^2 = 0;
# KKT conditions:
    stationarity:      2*(y - 5) - l[1] + l[2] = 0;
    complementarity_1: l[1]*y  = 0;
    complementarity_2: l[2]*(y - 10) = 0;
