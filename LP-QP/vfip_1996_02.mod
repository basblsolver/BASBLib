# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   vfip_1996_02.mod
#
# Source:
# Visweswaran V., Floudas C.A., Ierapetritou M.G., and Pistikopoulos E.N.,
# 1996, A decomposition-based global optimization approach for solving bi-
# level linear and quadratic programs. In Floudas C.A. and Pardalos P.M.
# (eds.), State oi the Art in Global Optimization, Nonconvex Optimizatiün
# and its Applications, (p. 139), Kluwer Academic Publishers.
#
# Optimal solution(s):
#   F* = 0.0, f* = 200.0 at (x*, y*) = (0.0, 0.0, -10, -10)
#   F* = 0.0, f* = 100.0 at (x*, y*) = (0.0, 30.0, -10, 10)
#
# NOTE: The problem has a local solution at x = (25, 30), y = (5, lO) with
#  F = 5.0, f = 0.0. The problem originally
#  presented in (Aiyoshi and Shimizu, 1984) locattes this local optimum.
#  Shimizu et al. (1997) also report its local minimum as the solution.
#
#  Example 8.3.2 from Bard, J. F. (1998). Also locates local solution.
#
# In www.bilevel.org this problem named: Problem TP2
#  A. Sinha and K. Deb, “Standard Test Problems for Single-Objective Bilevel
#  Optimization,” pp. 1–4.
#
# Optimal solution:
#   F* = 0.0
#   f* = 100.0
#   x* = (0.0, 30.0)
#   y* = (-10.0, 10.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       1       0       2       0
# ==============================================================================
var x{1..2} >=   0, <= 50;    # Outer variable
var y{1..2} >= -10, <= 20;    # Inner variable
var l{1..6} >=   0, <= 100;   # KKT Multipliers

minimize outer_obj: 2*x[1] + 2*x[2] - 3*y[1] - 3*y[2] - 60;  # Outer objective

subject to
# Outer constraints
    outer_con:  x[1] + x[2] + y[1] - 2*y[2] - 40 <= 0;
# Inner objective:
    inner_obj: (y[1] - x[1] + 20)^2 + (y[2] - x[2] + 20)^2 = 0;
# Inner constraints
    inner_con1:    -x[1] + 2*y[1] + 10 <= 0;
    inner_con2:    -x[2] + 2*y[2] + 10 <= 0;
# KKT conditions:
    stationarity_1:    2*(y[1] - x[1] + 20) + 2*l[1] - l[3] + l[4] = 0;
    stationarity_2:    2*(y[2] - x[2] + 20) + 2*l[2] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(-x[1] + 2*y[1] + 10) = 0;
    complementarity_2: l[2]*(-x[2] + 2*y[2] + 10) = 0;
    complementarity_3: l[3]*(-y[1] - 10) = 0;
    complementarity_4: l[4]*(y[1] - 20) = 0;
    complementarity_5: l[5]*(-y[2] - 10) = 0;
    complementarity_6: l[6]*(y[2] - 20) = 0;
