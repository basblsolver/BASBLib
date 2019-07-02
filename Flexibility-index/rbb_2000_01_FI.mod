# ==============================================================================
# AMPL coding by Gao Ji & Remigijus Paulavicius
# Name:
#   rbb_2001_01_FI.mod
#
# Original source:
# - Example 4 in:
#   Raspanti, C., Bandoni, J. & Biegler, L., 2000. New Strategies for
#   Flexibility Analysis and Design under Uncertainty. Computers and Chemical
#   Engineering , 24(9-10), pp. 2193-2209.
#   https://doi.org/10.1016/S0098-1354(00)00591-3
#
# Optimal solution:
#   xd* = 0.6
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   3       2       2       2       2       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/Flexibility-index/rbb_2001_01_FI
# ==============================================================================

var       xt >= -22.5, <= 27.5;   # Outer variable
var       xd >=  0, <= 10;   # Flexibility index, delta
var     xpsi >= -5, <= 5 ;   # Artificial variable 1
var       yz >=  0, <= 4 ;   # Inner variable
var       yu >= -5, <= 5 ;   # Artificial variable 2
var  l{1..8} >= 0        ;   # KKT Multipliers

minimize outer_obj: xd;   # Outer objective

subject to
# Outer constraints:
    outer_con1: xpsi = 0;
    outer_con2: xpsi = yu + (xd-xd)*yu + (xpsi-xpsi)*yu;  # Added artificial `(xpsi-xpsi)*yu` to avoid variable reordering in AMPL @Remis

    outer_con3:  2.5-xd*2.5-xt <= 0;
    outer_con4:  xt-2.5-xd*2.5 <= 0;
# Inner objective:
    inner_obj: yu = 0;
# Inner constraints
    inner_con1:  yz^2 -4*yz + xt - yu <= 0;
    inner_con2:          yz - xt - yu <= 0;
# KKT conditions:
    stationarity_1:    l[1] + l[2] + l[5] - l[6] = 1;
    stationarity_2:    l[1]*(2*yz-4) + l[2] - l[3] + l[4] = 0;
    complementarity_1: l[1]*(yz^2 -4*yz + xt - yu) = 0;
    complementarity_2: l[2]*(yz - xt - yu) = 0;;
    complementarity_3: l[3]*(  - yz    ) = 0;
    complementarity_4: l[4]*(    yz - 4) = 0;
    complementarity_5: l[5]*(  - yu - 5) = 0;
    complementarity_6: l[6]*(    yu - 5) = 0;