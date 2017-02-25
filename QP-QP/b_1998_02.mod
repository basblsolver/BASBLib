# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   b_1998_02.mod
#
# Source(s): 
#  1. Example 7.2.1 from Bard, J. F. (1998).
#     Practical bilevel optimization: algorithms and applications.
#     Kluwer Academic Publishers, Dordrecht
#
# Optimal solution:
#   F* = 0.0
#   f* = -0.9
#   x* = (0.8, 0.2)
#   y* = 1.0
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

minimize outer_obj: 0.5*(x[1] - 0.8)^2 + 0.5*(x[2] - 0.2)^2 + 0.5*(y - 1)^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: 0.5*y^2 - y + (-1)*x[1]*y + 2*x[2]*y = 0;
# KKT condition
    stationarity:      y - 1 - x[1] + 2*x[2] - l[1] + l[2] = 0;
    complementarity_1: l[1]*y = 0;
    complementarity_2: l[2]*(y - 1) = 0;
