# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_13v.mod
#
# Original source:
# - Variation of mb_2007_13
#
# Optimal solution:
#   F* = -2.0
#   f* = -1.5
#   x* = -1.0
#   y* = -1.0
#
# 
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-NLP/mb_2007_13v
# ==============================================================================
var x >= -1, <= 1;       # Outer variables
var y >= -1, <= 1;       # Inner variables
var l{1..2} >= 0, <= 2;  # KKT Multipliers

# Outer objective:
minimize outer_obj: x + y;

subject to
# Inner objective:
    inner_obj: 0.5*x*y^2 - y*x^3 = 0;
# KKT conditions:
    stationarity:      x*y - x^3 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
