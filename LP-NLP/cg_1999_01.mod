# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   gf_example_03.mod
#
# Source:
#   Example 3 from
#   Gümüs, Z. H., Floudas, C. A., (2001). Global Optimization of Nonlinear
#   Bilevel Programming Problems. Journal of Global Optimization, 20(1), 1–31.
#   http://doi.org/10.1023/A:1011268113791
#
# Optimal solution:
#   F* = -29.2
#   f* = 0.31
#   x* = (0.0, 0.9)
#   y*)= (0.0, 0.6, 0.4)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       3       0       0       3       0
# ==============================================================================
var x{1..2} >= 0, <= 2;   # Outer variable
var y{1..3} >= 0, <= 2;   # Inner variable
var l{1..9} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: -8*x[1] - 4*x[2] + 4*y[1] - 40*y[2] - 4*y[3];  # Objective

subject to
# Inner objective:
    inner_obj: (1+x[1]+x[2]+2*y[1]-y[2]+y[3])/(6+2*x[1]+y[1]+y[2]-3*y[3]) = 0;
# Inner constraints
    inner_con1: -y[1] + y[2] + y[3] -1 <= 0;
    inner_con2: 2*x[1] - y[1] + 2*y[2] - 0.5*y[3] - 1 <= 0;
    inner_con3: 2*x[2] + 2*y[1] - y[2] - 0.5*y[3] - 1 <= 0;
# KKT conditions:
    stationarity_1: 2*l[3] - l[2] - l[1] - l[4] + l[5] - (x[1] + x[2] + 2*y[1] - y[2] + y[3] + 1)/(2*x[1] + y[1] + y[2] - 3*y[3] + 6)^2 + 2/(2*x[1] + y[1] + y[2] - 3*y[3] + 6) = 0;
    stationarity_2: l[1] + 2*l[2] - l[3] - l[6] + l[7] - (x[1] + x[2] + 2*y[1] - y[2] + y[3] + 1)/(2*x[1] + y[1] + y[2] - 3*y[3] + 6)^2 - 1/(2*x[1] + y[1] + y[2] - 3*y[3] + 6) = 0;
    stationarity_3: l[1] - l[2]/2 - l[3]/2 - l[8] + l[9] + (3*(x[1] + x[2] + 2*y[1] - y[2] + y[3] + 1))/(2*x[1] + y[1] + y[2] - 3*y[3] + 6)^2 + 1/(2*x[1] + y[1] + y[2] - 3*y[3] + 6) = 0;
    complementarity_1: l[1]*(-y[1] + y[2] + y[3] -1) = 0;
    complementarity_2: l[2]*(2*x[1] - y[1] + 2*y[2] - 0.5*y[3] - 1) = 0;
    complementarity_3: l[3]*(2*x[2] + 2*y[1] - y[2] - 0.5*y[3] - 1) = 0;
    complementarity_4: l[4]*y[1] = 0;
    complementarity_5: l[5]*(y[1] - 2) = 0;
    complementarity_6: l[6]*y[2] = 0;
    complementarity_7: l[7]*(y[2] - 2) = 0;
    complementarity_8: l[8]*y[3] = 0;
    complementarity_9: l[9]*(y[3] - 2) = 0;
