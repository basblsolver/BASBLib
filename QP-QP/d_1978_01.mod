# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   d_1978_01.mod
#
# Original source: 
# - De Silva, A. H. (1978). Sensitivity formulas for nonlinear factorable 
#   programming and their application to the solution of an implicitly defined 
#   optimization model of U. S. crude oil production (Doctoral dissertation, 
#   George Washington University).
#
# Optimal solution:
#   F* = -1.0
#   f* = 0.0
#   x* = (0.5, 0.5)
#   y* = (0.5, 0.5)
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   2       2       0       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding website at:
#   http://basblsolver.github.io/test-problems/QP-QP/ds_1978_01
# ==============================================================================

var x{1..2} >= 0, <= 10;     # Outer variable
var y{1..2} >= 0.5, <= 1.5;  # Inner variable
var l{1..4} >= 0, <= 100;    # KKT Multipliers

minimize outer_obj: x[1]^2 - 2*x[1] + x[2]^2 - 2*x[2] + y[1]^2 + y[2]^2;   # Outer objective

subject to
# Inner objective:
    inner_obj:  (y[1] - x[1])^2 + (y[2] - x[2])^2 = 0;
# KKT conditions:
    stationarity_1:    2*(y[1] - x[1]) - l[1] + l[2] = 0;
    stationarity_2:    2*(y[2] - x[2]) - l[3] + l[4] = 0;
    complementarity_1: l[1]*(-y[1] + 0.5) = 0;
    complementarity_2: l[2]*(y[1] - 1.5) = 0;
    complementarity_3: l[3]*(-y[2] + 0.5) = 0;
    complementarity_4: l[4]*(y[2] - 1.5) = 0;
