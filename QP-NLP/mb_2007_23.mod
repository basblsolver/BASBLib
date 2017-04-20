# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_23.mod
#
# Original source:
# - Example 3.24 (mb_1_1_17) in:
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = -1.755
#   f* = 0.009
#   x* = 0.211
#   y* = 1.799
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   1       1       0       0       0       0
# ------------------------------------------------------------------------------
# 
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/QP-NLP/mb_2007_23
# ==============================================================================
var x >= 0, <= 1;        # Outer variables
var y >= 0, <= 3;        # Inner variables
var l{1..2} >= 0, <= 2;  # Multipliers

# Outer objective:
minimize outer_obj: x^2 - y;

subject to
# Inner objective:
    inner_obj: ( (y-1-0.1*x)^2 - 0.5 - 0.5*x )^2 = 0;
# KKT conditions:
    stationarity:      4*((y-1-0.1*x)^2-0.5-0.5*x)*(y-1-0.1*x) - l[1] + l[2] = 0;
    complementarity_1: -l[1]*y = 0;
    complementarity_2: l[2]*(y - 3) = 0;
