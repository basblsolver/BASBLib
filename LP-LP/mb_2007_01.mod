# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_01.mod
#
# Source:
#   Example 3.1 (mb_0_1_01) from
#   A. Mitsos and P. I. Barton, (2006) A Test Set for Bilevel Programs,
#   http://www.researchgate.net/publication/228455291, [Updated 19-09-2007].
#
# Optimal solution:
#   F* = 1.0
#   f* = -1.0
#   y* = 1.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   0       1       0       0       0       0
# ==============================================================================
var y >= -1, <= 1;        # Inner variable
var l{1..2} >= 0, <= 2;   # KKT Multipliers

minimize outer_obj: y;    # Outer objective

subject to
# Inner objective:
    inner_obj: -y = 0;
# KKT conditions:
    stationarity:      -1 - l[1] + l[2] = 0;
    complementarity_1: (y + 1)*l[1]  = 0;
    complementarity_2: (-y + 1)*l[2] = 0;
