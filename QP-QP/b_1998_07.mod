# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   b_1998_07.mod
#
# Original source: 
# - Example 8.5.1 in:
#  Bard, J. F. (1998). Practical bilevel optimization: algorithms and 
#  applications. Kluwer Academic Publishers, Dordrecht
#  
# Optimal solution:
#   F* = -1.41
#   f* = 7.62
#   x* = 1.89
#   y* = (0.89, 0.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       4       0
# ------------------------------------------------------------------------------
#                
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-QP/b_1998_07
# ==============================================================================
var x >= 0, <= 10;         # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..8} >= 0, <= 100;  # KKT Multipliers

# Outer objective:
minimize outer_obj: (x - 1)^2 + 2*y[1]^2 - 2*x; 

subject to
# Inner objective:
    inner_obj: (2*y[1] - 4)^2 + (2*y[2] - 1)^2 + x*y[1] = 0;
# Inner constraints:
    inner_con1:  4*x + 5*y[1] + 4*y[2] - 12 <= 0;
    inner_con2:  4*x - 4*y[1] + 5*y[2] - 4 <= 0;
    inner_con3: -4*x - 5*y[1] + 4*y[2] + 4 <= 0;
    inner_con4: -4*x + 4*y[1] + 5*y[2] - 4 <= 0;
# KKT conditions:
    stationarity_1:   4*(2*y[1] - 4) + x + 5*l[1] - 4*l[2] - 5*l[3] + 4*l[4] - l[5] + l[6] = 0;
    stationarity_2:   4*(2*y[2] - 4) + 4*l[1] + 5*l[2] + 4*l[3] + 5*l[4] - l[7] + l[8] = 0;
    complementarity_1: l[1]*(4*x + 5*y[1] + 4*y[2] - 12) = 0;
    complementarity_2: l[2]*(4*x - 4*y[1] + 5*y[2] - 4) = 0;
    complementarity_3: l[3]*(-4*x - 5*y[1] + 4*y[2] + 4) = 0;
    complementarity_4: l[4]*(-4*x + 4*y[1] + 5*y[2] - 4) = 0;
    complementarity_5: l[5]*y[1] = 0;
    complementarity_6: l[6]*(y[1] - 10) = 0;
    complementarity_7: l[7]*y[2] = 0;
    complementarity_8: l[8]*(y[2] - 10) = 0;
