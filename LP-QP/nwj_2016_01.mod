# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   nwj_2016_01.mod
#
# Source:
#  Example 3.4. from:  Nie, J., Wang, L., & Ye, J. (2016).
#  Bilevel polynomial programs and semidefinite relaxation methods.
#  arXiv preprint arXiv:1508.06985.
#
# Optimal solution:
#   F* = 2.0
#   f* = 0.0
#   x* = 2.0
#   y* = (0.0, 0.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       1       0
# ==============================================================================
var x >= 2, <= 3;          # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..5} >= 0, <= 100;  # KKT Multipliers

minimize outer_obj: x + y[1] + y[2];  # Outer objective

subject to
# Inner objective:
    inner_obj:      x*y[1] + x*y[2] = 0;
# Inner constraints
    inner_con:      -y[1]^2 + y[2]^2 + y[1]^4 + 2*y[1]^2*y[2]^2 + y[2]^4 <= 0;
# KKT conditions:
    stationarity_1:    x + l[1]*(-2*y[1] + 4*y[1]^3 + 4*y[1]*y[2]^2) - l[2] + l[3] = 0;
    stationarity_2:    x + l[1]*(2*y[2] + 4*y[1]^2*y[2] + 4*y[2]^3) - l[4] + l[5] = 0;
    complementarity_1: l[1]*(-y[1]^2 + y[2]^2 + y[1]^4 + 2*y[1]^2*y[2]^2 + y[2]^4) = 0;
    complementarity_4: l[2]*y[1] = 0;
    complementarity_5: l[3]*(y[1] - 10) = 0;
    complementarity_6: l[4]*y[2] = 0;
    complementarity_7: l[5]*(y[2] - 10) = 0;
