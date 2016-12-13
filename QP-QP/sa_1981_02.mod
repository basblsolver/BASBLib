# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   sa_1981_2.mod
#
# Source: Example 2 from: Shimizu, K., & Aiyoshi, E. (1981).
#  A new computational method for Stackelberg and min-max problems by use of a
#  penalty method. IEEE Transactions on Automatic Control, 26(2), 460-466.
#
#  www.bilevel.org: Problem TP1
#  A. Sinha and K. Deb, “Standard Test Problems for Single-Objective Bilevel
#  Optimization,” pp. 1–4.
#
# Optimal solution:
#   F* = 225.0
#   f* = 100.0
#   x* = (20.0, 5.0)
#   y* = (10.0, 5.0)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       2       0       2       0
# ==============================================================================
set J := {1..2};
param lb{J};                      # Lower Bounds for the outer variable
param ub{J};                      # Upper Bounds for the outer variable
var x{j in J} >= lb[j] <= ub[j];  # Outer variable
var y{1..2} >= 0, <= 10;          # Inner variable
var l{1..4} >= 0, <= 100;         # KKT Multipliers

minimize outer_obj: (x[1] - 30)^2 + (x[2] - 20)^2 - 20*y[1] + 20*y[2];   # Outer objective

subject to
# Outer constraints
    outer_con1: -x[1] - 2*x[2] + 30 <= 0;
    outer_con2: x[1] + x[2] -25 <= 0;
# Inner objective:
    inner_obj:  (x[1] - y[1])^2 + (x[2] - y[2])^2 = 0;
# KKT conditions:
    stationarity_1:    -2*x[1] + 2*y[1] - l[1] + l[2] = 0;
    stationarity_2:    -2*x[2] + 2*y[2] - l[3] + l[4] = 0;
    complementarity_1: l[1]*y[1] = 0;
    complementarity_2: l[2]*(y[1] - 10) = 0;
    complementarity_3: l[3]*y[2] = 0;
    complementarity_4: l[4]*(y[2] - 10) = 0;

# Data for parameter bounds
data;
param lb :=
    1  0
    2  0
;
param ub :=
    1  25
    2  15
;
