# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   nwj_2017_01.mod
#
# Original source:
# - Example 3.4. in:
#   Nie, J., Wang, L., & Ye, J. J. (2017). Bilevel polynomial programs and 
#   semidefinite relaxation methods. SIAM Journal on Optimization, 27(3), 1728-1757
#
# Optimal solution:
#   F* = 2.0
#   f* = 0.0
#   x* = 2.0
#   y* = (0.0, 0.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       1       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-NLP/nwj_2017_01
# ==============================================================================
var x >= 2, <= 3;          # Outer variable
var y{1..2} >= 0, <= 10;   # Inner variable
var l{1..5} >= 0, <= 100;  # KKT Multipliers

# Outer objective:
minimize outer_obj: x + y[1] + y[2];  

subject to
# Inner objective:
    inner_obj:      x*y[1] + x*y[2] = 0;
# Inner constraints:
    inner_con:      -y[1]^2 + y[2]^2 + y[1]^4 + 2*y[1]^2*y[2]^2 + y[2]^4 <= 0;
# KKT conditions:
    stationarity_1:    x + l[1]*(-2*y[1] + 4*y[1]^3 + 4*y[1]*y[2]^2) - l[2] + l[3] = 0;
    stationarity_2:    x + l[1]*(2*y[2] + 4*y[1]^2*y[2] + 4*y[2]^3) - l[4] + l[5] = 0;
    complementarity_1: l[1]*(-y[1]^2 + y[2]^2 + y[1]^4 + 2*y[1]^2*y[2]^2 + y[2]^4) = 0;
    complementarity_4: l[2]*y[1] = 0;
    complementarity_5: l[3]*(y[1] - 10) = 0;
    complementarity_6: l[4]*y[2] = 0;
    complementarity_7: l[5]*(y[2] - 10) = 0;
