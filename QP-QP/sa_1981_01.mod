# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   sa_1981_01.mod
#
# Original source:
# - Example 1 in: 
#   Shimizu, K., & Aiyoshi, E. (1981). A new computational method for 
#   Stackelberg and min-max problems by use of a penalty method. 
#   IEEE Transactions on Automatic Control, 26(2), 460-466.
#
# Optimal solution:
#   F* = 100.0
#   f* = 0.0
#   x* = 10.0
#   y* = 10.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       1       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-QP/sa_1981_01
# ==============================================================================
var x >= 0, <= 15;        # Outer variable
var y >= 0, <= 20;        # Inner variable
var l{1..3} >= 0, <= 10;  # KKT Multipliers

# Outer objective:
minimize outer_obj: x^2 + (y-10)^2;  

subject to
# Outer constraints:
    outer_con:  -x + y <= 0;
# Inner objective:
    inner_obj: (x + 2*y -30)^2 = 0;
# Inner constraints:
    inner_con:   x + y - 20 <= 0;
# KKT conditions:
    stationarity:      4*(x + 2*y -30) + l[1] - l[2] + l[3] = 0;
    complementarity_1: l[1]*(x + y - 20) = 0;
    complementarity_2: l[2]*y = 0;
    complementarity_3: l[3]*(y - 20) = 0;
