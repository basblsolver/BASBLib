# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   dd_2012_01.mod
#
# Source: Example 2.4 from Dempe, S., & Dutta, J. (2012).
#  Is bilevel programming a special case of a mathematical program with
#  complementarity constraints?. Mathematical programming, 131(1-2), 37-48.
#
# Optimal solution:
#   F* = 1.0
#   f* = 0.0
#   x* = 0.0
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       1       0
# ==============================================================================
var x >= -10, <= 10;      # Outer variable
var y >= -10, <= 10;      # Inner variable
var l{1..3} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: (x - 1)^2 + y^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: x^2*y = 0;
# Inner constraints
    inner_con: y^2 <= 0;
# KKT condition
    stationarity:      x^2 + 2*l[1]*y - l[2] + l[3] = 0;
    complementarity_1: l[1]*y^2 = 0;
    complementarity_2: l[2]*(-y - 10) = 0;
    complementarity_3: l[3]*(y - 10) = 0;
