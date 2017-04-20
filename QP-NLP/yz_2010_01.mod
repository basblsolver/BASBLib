# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   yz_2010_01.mod
#
# Original source: 
# - Example 4.2 in:
#  Ye, J. J., & Zhu, D. (2010). New necessary optimality conditions for bilevel 
#  programs by combining the MPEC and value function approaches.
#  SIAM Journal on Optimization, 20(4), 1885-1905.
#
# Optimal solution:
#   F* = 1.000
#   f* = -2.000
#   x* = 1.000
#   y* = 1.000
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/yz_2010_01
# ==============================================================================
var x >= -3, <= 2;        # Outer variables
var y >= -10, <= 10;      # Inner variables
var l{1..3} >= 0, <= 10;  # KKT Multipliers

# Outer objective:
minimize outer_obj: (x - 1)^2 + y^2;

subject to
# Inner objective:
    inner_obj:         y^3 - 3*y + (x-x)^3 = 0;  # Added artificial (x-x)^3
# Inner constraints:
    inner_con_1:       x - y <= 0;
# KKT conditions:
    stationarity:      3*y^2 - 3 - l[1] + l[2] + l[3] = 0;
    complementarity_1: l[2]*(-10 - y) = 0;
    complementarity_2: l[3]*(y - 10) = 0;
