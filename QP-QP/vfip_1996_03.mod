# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   vfip_1996_3.mod
#
# Source(s):
#  Visweswaran V., Floudas C.A., Ierapetritou M.G., and Pistikopoulos E.N.,
#  1996, A decomposition-based global optimization approach for solving bi-
#  level linear and quadratic programs. In Floudas C.A. and Pardalos P.M.
#  (eds.), State oi the Art in Global Optimization, Nonconvex Optimizatiün
#  and its Applications, (p. 139), Kluwer Academic Publishers.
#
#  Originally from (Shimizu and Aiyoshi, 1981)
#
#  Also Example 7.1.1 in (Bard, 1998)
#
# Optimal solution:
#   F* = 17.0
#   f* = 1.0
#   x* = 1.0
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       3       0
# ==============================================================================
var x >= 0, <= 10;         # Outer variable
var y >= 0, <= 10;         # Inner variable
var l{1..5} >= 0, <= 10;   # KKT Multipliers

minimize outer_obj: (x - 5)^2 + (2*y + 1)^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: (y - 1)^2 - 1.5*x*y = 0;
# Inner constraints
    inner_con1:    -3*x + y + 3 <= 0;
    inner_con2:     x - 0.5*y -4 <= 0;
    inner_con3:     x + y -7 <= 0;
# KKT conditions:
    stationarity:      2*(y - 1) - 1.5*x + l[1] - 0.5*l[2] + l[3] - l[4] + l[5] = 0;
    complementarity_1: l[1]*(-3*x + y + 3) = 0;
    complementarity_2: l[2]*(x - 0.5*y -4) = 0;
    complementarity_3: l[3]*(x + y -7) = 0;
    complementarity_4: l[4]*y = 0;
    complementarity_5: l[5]*(y - 10) = 0;
