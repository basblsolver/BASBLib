# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   y_1996_02.mod
#
# Original source: 
# - Example 3.1 in: 
#  Yezza, A. (1996). First-order necessary optimality conditions for general 
#  bilevel programming problems. 
#  Journal of Optimization Theory and Applications, 89(1), 189-219.
#
# Optimal solution:
#   F* = 1.5
#   f* = -2.5
#   x* = 0.25
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-QP/y_1996_02
# ==============================================================================
var x >= 0, <= 1;         # Outer variable
var y >= 0, <= 1;         # Inner variable
var l{1..5} >= 0, <= 10;  # KKT Multipliers

# Outer objective:
minimize outer_obj: -(4*x - 3)*y + 2*x + 1;

subject to
# Inner objective:
    inner_obj: -(1 - 4*x)*y - 2*x -2 = 0;
# KKT conditions:
    stationarity:      4*x - 1 = 0;
    complementarity_1: l[1]*y = 0;
    complementarity_2: l[2]*(y - 1) = 0;
