# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   c_2002_05.mod
#
# Original source:
#  - BIPA5 problem in: B. Colson, BIPA(BIlevel Programming with Approximation 
#  	 Methods)(software guide and test problems), Cahiers du GERAD, (2002)
#
# Optimal solution:
#   F* = 2.750
#   f* = 0.548
#   x* = 1.941
#   y* = (0.000, 1.211)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       2       0       0       2       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding website at:
#   http://basblsolver.github.io/test-problems/NLP-NLP/c_2002_05
# ==============================================================================
set J := {1..2};
param ylb{J};                        # Lower Bounds for the inner variable
param yub{J};                        # Upper Bounds for the inner variable
var x >= 0, <= 10;                   # Outer variable
var y{j in J} >= ylb[j], <= yub[j];  # Inner variable
var l{1..6} >= 0, <= 100;            # KKT Multipliers

minimize outer_obj: (x - y[2])^4 + (y[1] - 1)^2 + (y[1] - y[2])^2;  # Outer objective

subject to
# Inner objective:
    inner_obj: 2*x + exp(y[1]) + y[1]^2 + 4*y[1] + 2*y[2]^2 - 6*y[2] = 0;
# Inner constraints
    inner_con_1:    6*x + y[1]^2 + exp(y[2]) - 15 <= 0;
    inner_con_2:    5*x + y[1]^4 - y[2] - 25 <= 0;
# KKT conditions:
    stationarity_1:    exp(y[1]) + 2*y[1] + 4 + 2*l[1]*y[1] + 4*l[2]*y[1]^3 - l[3] + l[4] = 0;
    stationarity_2:    4*y[2] - 6 + l[1]*exp(y[2]) - l[2] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(6*x + y[1]^2 + exp(y[2]) - 15) = 0;
    complementarity_2: l[2]*(5*x + y[1]^4 - y[2] - 25) = 0;
    complementarity_3: l[3]*y[1] = 0;
    complementarity_4: l[4]*(y[1] - 4) = 0;
    complementarity_5: l[5]*y[2] = 0;
    complementarity_6: l[6]*(y[2] - 2) = 0;

# Data for parameter bounds
data;
param ylb :=
    1  0
    2  0
;
param yub :=
    1  4
    2  2
;