# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   vfip_1996_01.mod
#
# Source:
# Visweswaran V., Floudas C.A., Ierapetritou M.G., and Pistikopoulos E.N.,
# 1996, A decomposition-based global optimization approach for solving bi-
# level linear and quadratic programs. In Floudas C.A. and Pardalos P.M.
# (eds.), State oi the Art in Global Optimization, Nonconvex Optimizatiün
# and its Applications, (p. 139), Kluwer Academic Publishers.
#
# Optimal solution:
#   F* = 3.111
#   f* = -6.667
#   x* = 0.889
#   y* = 2.222
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       4       0
# ==============================================================================
var x >= 0, <= 10;         # Outer variable
var y >= 0, <= 10;         # Inner variable
var l{1..6} >= 0, <= 10;   # KKT Multipliers

minimize outer_obj: x + y;  # Outer objective

subject to
# Inner objective:
    inner_obj: -5*x - y = 0;
# Inner constraints
    inner_con1:    -x - 0.5*y + 2 <= 0;
    inner_con2:    -0.25*x + y - 2 <= 0;
    inner_con3:     x + 0.5*y - 8 <= 0;
    inner_con4:     x - 2*y - 2 <= 0;
# KKT conditions:
    stationarity:    -1 - 0.5*l[1] + l[2] + 0.5*l[3] - 2*l[4] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(-x - 0.5*y + 2) = 0;
    complementarity_2: l[2]*(-0.25*x + y - 2) = 0;
    complementarity_3: l[3]*(x + 0.5*y - 8) = 0;
    complementarity_4: l[4]*(x - 2*y - 2) = 0;
    complementarity_5: l[5]*y = 0;
    complementarity_6: l[6]*(y - 10) = 0;
