# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_24.mod
#
# Original source:
# - Example 3.26 (mb_2_3_02) in:
#   A. Mitsos and P. I. Barton, (2007) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solutions:
#   F* = -2.350           ; F* = -2.350
#   f* = -2.0             ; f* = -2.0
#   x* = (-1.0,-1.0)      ; x* = (-1.0,-1.0)
#   y* = (1.0,1.0,-0.707) ; y* = (1.0,-1.0,-0.707)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       3       3       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/NLP-NLP/mb_2007_24
# ==============================================================================
var x{1..2} >= -1, <= 1;   # Outer variables
var y{1..3} >= -1, <= 1;   # Inner variables
var l{1..6} >= 0, <= 100;  # KKT Multipliers

# Outer objective:
minimize outer_obj: x[1]*y[1] + x[2]*y[2]^2 + x[1]*x[2]*y[3]^3;

subject to
# Outer constraints:
    outer_con_1: -x[1]^2 <= -0.1;
    outer_con_2: -(y[1]^2 + y[2]^2 + y[3]^2) <= -1.5;
    outer_con_3: y[1]^2 + y[2]^2 + y[3]^2 <= 2.5;
# Inner objective:
    inner_obj: x[1]*y[1]^2 + x[2]*y[2]^2 + (x[1]-x[2])*y[3]^2 = 0;
# KKT conditions:
    stationarity_1: 2*x[1]*y[1] -l[1] + l[2] = 0;
    stationarity_2: 2*x[2]*y[2] -l[3] + l[4] = 0;
    stationarity_3: 2*(x[1]- x[2])*y[3] -l[5] + l[6] = 0;
    complementarity_1: -l[1] -l[1]*y[1] = 0;
    complementarity_2: -l[2] + l[2]*y[1] = 0;
    complementarity_3: -l[3] -l[3]*y[2] = 0;
    complementarity_4: -l[4] + l[4]*y[2] = 0;
    complementarity_5: -l[5] -l[5]*y[3] = 0;
    complementarity_6: -l[6] + l[6]*y[3] = 0;
