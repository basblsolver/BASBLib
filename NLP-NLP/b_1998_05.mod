# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   b_1998_05.mod
#
# Source: Example 8.1.3 from Bard, J. F. (1998).
#  Practical bilevel optimization: algorithms and applications.
#  Kluwer Academic Publishers, Dordrecht
#
#  (Augmented by a nonnegativity constraint on y)
#
# Optimal solution:
#   F* = 1.0
#   f* = 0.0
#   x* = 1.0
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ==============================================================================
var x >= -100, <= 100;      # Outer variable
var y >= 0, <= 100;         # Inner variable
var l{1..2} >= 0, <= 1000;  # KKT Multipliers

minimize outer_obj: (x - 1)^2 + (y - 1)^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: 0.5*y^2 + 500*y - 50*x*y = 0;
# KKT condition
    stationarity:      y + 500 - 50*x - l[1] + l[2] = 0;
    complementarity_1: l[1]*y = 0;
    complementarity_2: l[2]*(y - 100) = 0;
