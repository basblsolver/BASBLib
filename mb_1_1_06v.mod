# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_1_1_06v.mod
#
# Source:
#   Example 3 (Variant of Example 3.13 from [Mitsos and Barton, 2007]) from
#   Kleniati, P.-M., & Adjiman, C. S. (2014). Branch-and-Sandwich:
#   a deterministic global optimization algorithm for optimistic bilevel
#   programming problems. Part II: Convergence analysis and numerical results.
#   Journal of Global Optimization, 60(3), 459–481.
#
# Optimal solution:
#   F* = -1.0, f* = 0.0 at (x*,y*) = (0,1)
#
# --------------------------------- Properties ---------------------------------
#                        Outer      Inner
# ------------------------------------------------------------------------------
# Number of variables:   1          1
# Number of constraints: 0          0
# ==============================================================================
var x >= -1, <= 1;       # Outer variables
var y >= -1, <= 1;       # Inner variables
var l{1..2} >= 0, <= 2;  # KKT Multipliers

minimize outer_obj: x - y;

subject to
# Inner objective:
    inner_obj: 0.5*x*y^2 - x*y^3 = 0;
# KKT conditions:
    stationarity:      x*y - 3*x*y^2 - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;
