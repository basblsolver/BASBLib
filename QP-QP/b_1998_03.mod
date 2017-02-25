# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   b_1998_03.mod
#
# Source: Example 7.2.2 from Bard, J. F. (1998).
#  Practical bilevel optimization: algorithms and applications.
#  Kluwer Academic Publishers, Dordrecht
#
# Optimal solution:
#   F* = 0.0
#   f* = -0.320
#   x*= (1.0, 0.4)
#   y* = 0.8
#
# NOTE: Fixed in inner objective "+ y" into "- y"
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       1       0       0       0       0
# ==============================================================================
var x{1..2} >= 0, <= 1;   # Outer variable
var y >= 0, <= 1;         # Inner variable
var l{1..2} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: 0.5*(x[1] - 1)^2 + 0.5*(x[2] - 0.4)^2 + 0.5*(y - 0.8)^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: 0.5*y^2 - y + (-1)*x[1]*y + 3*x[2]*y = 0;
# KKT condition
    stationarity:      y - 1 - x[1] + 3*x[2] - l[1] + l[2] = 0;
    complementarity_1: l[1]*y = 0;
    complementarity_2: l[2]*(y - 1) = 0;