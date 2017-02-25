# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_02.mod
#
# Original source:
#  - Example 3.2 (mb_0_1_02) in:
#    A. Mitsos and P. I. Barton, A Test Set for Bilevel Programs, 2007.
#    (Last updated September 19, 2007)
#
# Optimal solution:
#   Infeasible problem
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   0       1       1       0       0       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding wiki website at:
#    http://basblsolver.github.io/test-problems/LP-LP/mb_2007_01
# ==============================================================================

var y >= -1, <= 1;        # Inner variable(s)
var l{1..2} >= 0, <= 2;   # KKT Multipliers

minimize outer_obj: y;    # Outer objective

subject to
# Outer constraints:
    outer_con: y <= 0;
# Inner objective:
    inner_obj: -y = 0;
# KKT conditions:
    stationarity:      -1 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
