# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   gf_2001_01.mod
#
# Original source:
# - Example 5 in:
#   Gümüs, Z. H., Floudas, C. A., (2001). Global Optimization of Nonlinear
#   Bilevel Programming Problems. Journal of Global Optimization, 20(1), 1–31.
#   http://doi.org/10.1023/A:1011268113791
#
# Optimal solution:
#   F* = 0.19
#   f* = -7.25
#   x* = 0.194
#   y* = (9.97, 10.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       2       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-NLP/gf_2001_01
# ==============================================================================
var x >= 0.1, <= 10;             # Outer variables
var y{1..2} >= 0.1, <= 10.0001;  # Inner variables
var l{1..6} >= 0, <= 10;         # KKT Multipliers

# Outer objective:
minimize outer_obj: x;   

subject to
# Inner objective:
    inner_obj: -y[1] + 0.5864*y[1]^(2/3) = 0;
# Inner constraints:
    inner_con1: 0.0332333/y[2] + 0.1*y[1] -1 <= 0;
    inner_con2: 4*x/y[2] + 2*x^(-0.71)/y[2] + 0.0332333*x^(-1.3) - 1 <= 0;
# KKT conditions:
    stationarity_1: -1 + 0.5864*(2/3)*y[1]^(-1/3) + 0.1*l[1] - l[3] + l[4] = 0;
    stationarity_2: -l[1]*0.0332333/y[2]^2 - l[2]*(4*x/y[2]^2 + 2*x^(-0.71)/y[2]^2) - l[5] + l[6] = 0;
    complementarity_1: l[1]*(0.0332333/y[2] + 0.1*y[1] -1) = 0;
    complementarity_2: l[2]*(4*x/y[2] + 2*x^(-0.71)/y[2] + 0.0332333*x^(-1.3) - 1) = 0;
    complementarity_3: l[3]*(0.1 - y[1]) = 0;
    complementarity_4: l[4]*(y[1] - 10) = 0;
    complementarity_5: l[5]*(0.1-y[2]) = 0;
    complementarity_6: l[6]*(y[2]-10) = 0;
