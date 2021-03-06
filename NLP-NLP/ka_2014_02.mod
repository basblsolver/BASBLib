# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   ka_2014_02.mod
#
# Original source:
# - Example 4 - Variant of Example 3.28 (mb_5_5_02) in:
#   Kleniati, P.-M., & Adjiman, C. S. (2014). Branch-and-Sandwich:
#   a deterministic global optimization algorithm for optimistic bilevel
#   programming problems. Part II: Convergence analysis and numerical results.
#   Journal of Global Optimization, 60(3), 459–481.
#
# Optimal solution:
#   F* = -10.0
#   f* = -3.1
#   x* = (1.0, -1.0, -1.0, -1.0, -1.0)
#   y* = (-1.0, -1.0, -1.0, -1.0, -1.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   5       5       3       0       1       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/NLP-NLP/ka_2014_02
# ==============================================================================
set I:= 1..5;
set J:= 1..5;
set K:= 1..11;

var x{i in I} >= -1, <= 1;   # Outer variables
var y{j in J} >= -1, <= 1;   # Inner variables
var l{k in K} >= 0, <= 100;  # KKT Multipliers

# Outer objective:
minimize outer_obj: sum {i in I} -x[i]^2 + sum {j in J} -y[j]^2;

subject to
# Outer constraints:
    outer_con_1: -x[1] + y[1]*y[2] <= 0;
    outer_con_2: x[2]*y[1]^2 <= 0;
    outer_con_3: x[1] + y[3] -exp(x[2]) <= 0;
# Inner constraints:
    inner_con: x[1]-y[3]^2 <= 0.2;
# Inner objective:
    inner_obj: 0.1*y[3] + y[1]^3 + (x[1]+x[2])*y[2]^2 + (y[4]^2 + y[5]^2)*x[3]*x[4]*x[5] = 0;
# KKT conditions:
    stationarity_1: 3*y[1]^2 - l[2] + l[3] = 0;
    stationarity_2: 2*(x[1] + x[2])*y[2] - l[4] + l[5] = 0;
    stationarity_3: -2*l[1]*y[3] - l[6] + l[7] = -0.1;
    stationarity_4: 2*x[3]*x[4]*x[5]*y[4] -l[8] + l[9] = 0;
    stationarity_5: 2*x[3]*x[4]*x[5]*y[5] - l[10] + l[11] = 0;
    complementarity_1: l[1]*(x[1]-y[3]^2-0.2) = 0;
    complementarity_2: l[2]*(-1-y[1]) = 0;
    complementarity_3: l[3]*(y[1]-1) = 0;
    complementarity_4: l[4]*(-1-y[2]) = 0;
    complementarity_5: l[5]*(y[2]-1) = 0;
    complementarity_6: l[6]*(-1-y[3]) = 0;
    complementarity_7: l[7]*(y[3]-1) = 0;
    complementarity_8: l[8]*(-1-y[4]) = 0;
    complementarity_9: l[9]*(y[4]-1) = 0;
    complementarity_10: l[10]*(-1-y[5]) = 0;
    complementarity_11: l[11]*(y[5]-1) = 0;
