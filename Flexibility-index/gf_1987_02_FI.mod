# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   gf_1987_02_FI.mod
#
# Original source:
# - Example 3 in:
#   Grossmann, I. & Floudas, C., 1987. Active Constraint Strategy for
#   Flexibility Analysis in Chemical Processes.
#   Comput. chem. Engng., 11(6), pp. 675-693..
#   https://doi.org/10.1016/0098-1354(87)87011-4
#
# Other source
# - Example 1 in:
#   Floudas, C. A., Gusmus, Z. H. & Ierapetritou, M. G., 2001. Global Optimization
#   in Design under Uncertainty: Feasibility Test and Flexibility Index Problems.
#   Ind. Eng. Chem. Res., pp. 4267-4282.
#   http://pubs.acs.org/doi/abs/10.1021/ie001014g
#
# Optimal solution:
#   xd* = 0.148

# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   3       2       1       2       4       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/Flexibility-index/gf_1987_02_FI
# ==============================================================================

var       xt  >=   1, <= 9  ;   # Outer variable, FH1
var       xd  >=   0, <= 10 ;   # Flexibility index, delta
var     xpsi  >= -50, <= 100;   # Artificial variable 1
var       yz  >=   0, <= 300;   # Inner variable, Qc
var       yu  >= -50, <= 100;   # Artificial variable 2
var  l{1..10} >=   0        ;   # KKT Multipliers

minimize outer_obj: xd;   # Outer objective

subject to
# Outer constraints:
    outer_con1: xpsi = 0;
    outer_con2: xpsi = yu + (xd-xd)*yu + (xpsi-xpsi)*yu;  # Added artificial `(xpsi-xpsi)*yu` to avoid variable reordering in AMPL @Remis

    outer_con3:  xt-1-xd*0.8 <= 0;
# Inner objective:
    inner_obj: yu = 0;
# Inner constraints
    inner_con1: -25 *xt + yz +  10 - 0.5*yz*xt - yu <= 0;
    inner_con2: -190*xt + yz +  10 - yu <= 0;
    inner_con3: -270*xt + yz + 250 - yu <= 0;
    inner_con4:  260*xt - yz - 250 - yu <= 0;
# KKT conditions:
    stationarity_1:    l[1] + l[2] + l[3] + l[4] + l[7] - l[8] = 1;
    stationarity_2:    l[1]*(1 - 0.5*xt) + l[2] + l[3] - l[4] - l[5] + l[6] = 0;
    complementarity_1: l[1]*(-25 *xt + yz +  10 - 0.5*yz*xt - yu) = 0;
    complementarity_2: l[2]*(-190*xt + yz +  10 - yu) = 0;
    complementarity_3: l[3]*(-270*xt + yz + 250 - yu) = 0;
    complementarity_4: l[4]*( 260*xt - yz - 250 - yu) = 0;
    complementarity_5: l[5]*(-yz) = 0;
    complementarity_6: l[6]*( yz-300) = 0;
    complementarity_7: l[7]*(-yu-50) = 0;
    complementarity_8: l[8]*( yu-100) = 0;