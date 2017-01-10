# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2007_01.mod
#
# Sources where this problem occurs
#
# Original source:
#  - Example 3.1 (mb_0_1_01) in (Mitsos & Barton, 2007)
# Other sources:
# - mb_0_1_01 in (Mitsos et al., 2008)
# - Problem No. 2 (see Table 4) in (Kleniati & Adjiman, 2014)
#
# References
#
# - [Kleniati & Adjiman, 2014]:
#     P.-M. Kleniati and C. S. Adjiman, Branch-and-Sandwich: a deterministic
#     global optimization algorithm for optimistic bilevel programming problems.
#     Part II: Convergence analysis and numerical results,
#     Journal of Global Optimization, 60 (2014), pp. 459–481
# - [Mitsos & Barton, 2007]:
#     A. Mitsos and P. I. Barton, A Test Set for Bilevel Programs, 2007.
#     (Last updated September 19, 2007)
# - [Mitsos et al., 2008]:
#     A. Mitsos, P. Lemonidis, and P. I. Barton, Global solution of bilevel
#     programs with a nonconvex inner program, Journal of Global Optimization,
#     42 (2008), pp. 475–513
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
    inner_obj:         -y = 0;
# KKT conditions:
    stationarity:      -1 - l[1] + l[2] = 0;
    complementarity_1: (y + 1)*l[1]  = 0;
    complementarity_2: (-y + 1)*l[2] = 0;
