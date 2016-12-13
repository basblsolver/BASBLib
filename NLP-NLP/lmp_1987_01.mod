# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   lmp_1987_01.mod
#
# Source:
#   Example 4.1 from
#   Lucchetti, R., Mignanego, F., & Pieri, G. (1987). Existence theorems of
#   equilibrium points in stackelberg. Optimization, 18(6), 857-866.
#
# Optimal solution:
#   F* = 0.0
#   f* = 0.0
#   x* = 1.0
#   y* = 0.0
#
# ---------------------------- Problem Properties ------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   1          1
# Number of constraints: 0          0
# ==============================================================================
var x >= 0, <= 1;         # Outer variables
var y >= 0, <= 1;         # Inner variables
var l{1..2} >= 0, <= 10;  # KKT Multipliers

minimize outer_obj: 0.5*(1-x) + x*y;

subject to
# Inner objective
    inner_obj: (x-1)*y = 0;
# KKT conditions
    stationarity:      x - 1 - l[1] + l[2] = 0;
    complementarity_1: l[1]*y = 0;
    complementarity_2: l[2]*(y - 1) = 0;
