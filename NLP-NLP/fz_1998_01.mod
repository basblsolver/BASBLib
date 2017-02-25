# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   gf_2001_02.mod
#
# Source:
#   Example 2 from
#   Gümüs, Z. H., Floudas, C. A., (2001). Global Optimization of Nonlinear
#   Bilevel Programming Problems. Journal of Global Optimization, 20(1), 1–31.
#   http://doi.org/10.1023/A:1011268113791
#
# Optimal solution:
#   F* = 1.0
#   f* = -1.0
#   x* = 1.0
#   y* = (0.0, 1.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       2       0
# ==============================================================================
set J := {1..2};
var x >= 0, <= 1;                 # Outer variable
param lb{J};                      # Lower Bounds for the inner variable
param ub{J};                      # Upper Bounds for the inner variable
var y{j in J} >= lb[j] <= ub[j];  # Inner variable
var l{1..6} >= 0, <= 10;          # KKT Multipliers

minimize outer_obj: x^3*y[1] + y[2];   # Outer objective

subject to
# Inner objective:
    inner_obj: -y[2] = 0;
# Inner constraints
    inner_con1: x*y[1] - 10 <= 0;
    inner_con2: y[1]^2 + x*y[2] -1 <= 0;
# KKT conditions:
    stationarity_1:    l[1]*x + 2*l[2]*y[1] - l[3] + l[4] = 0;
    stationarity_2:    -1 + l[2]*x - l[5] + l[6] = 0;
    complementarity_1: l[1]*(x*y[1] - 10) = 0;
    complementarity_2: l[2]*(y[1]^2 + x*y[2] -1) = 0;
    complementarity_3: l[3]*(-1 - y[1]) = 0;
    complementarity_4: l[4]*(y[1] - 1) = 0;
    complementarity_5: l[5]*y[2] = 0;
    complementarity_6: l[6]*(y[2] - 100) = 0;

# Data for parameter bounds
data;
param lb :=
    1 -1
    2  0
;
param ub :=
    1  1
    2  100
;
