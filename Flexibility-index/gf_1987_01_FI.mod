# ==============================================================================
# AMPL coding by Gao Ji & Remigijus Paulavicius
# Name:
#   gf_1987_01_FI.mod
#
# Original source:
# - Example 1 in:
#   Grossmann, I. & Floudas, C., 1987. Active Constraint Strategy for
#   Flexibility Analysis in Chemical Processes.
#   Comput. chem. Engng., 11(6), pp. 675-693..
#   https://doi.org/10.1016/0098-1354(87)87011-4
#
# Optimal solution:
#   xd = 0.5
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   6       2       8       2        5       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/Flexibility-index/gf_1987_01_FI
# ==============================================================================

set J :={1..4};
param xtlb{J};                 # Lower Bounds for the outer variables
param xtub{J};                 # Upper Bounds for the outer variables

var       xt{j in J} >= xtlb[j], <= xtub[j];   # Outer variables, T1,T3,T5,T8
var       xd  >=   0, <= 10 ;   # Flexibility index, delta
var      xpsi >= -50, <= 100;   # Artificial variable 1
var        yz >=   0, <= 500;   # Inner variable, Qc
var        yu >= -50, <= 100;   # Artificial variable 2
var  l{1..11} >=   0        ;   # KKT Multipliers

minimize outer_obj: xd;   # Outer objective

subject to
# Outer constraints:
    outer_con1: xpsi = 0;
    outer_con2: xpsi = yu + (xd-xd)*yu + (xpsi-xpsi)*yu;  # Artificial `(xpsi-xpsi)*yu` to avoid variable reordering in AMPL
    outer_con3:  620-xd*10-xt[1] <= 0;
    outer_con4:  xt[1]-620-xd*10 <= 0;
    outer_con5:  388-xd*10-xt[2] <= 0;
    outer_con6:  xt[2]-388-xd*10 <= 0;
    outer_con7:  583-xd*10-xt[3] <= 0;
    outer_con8:  xt[3]-583-xd*10 <= 0;
    outer_con9:  313-xd*10-xt[4] <= 0;
   outer_con10:  xt[4]-313-xd*10 <= 0;
# Inner objective:
    inner_obj: yu = 0;
# Inner constraints
    inner_con1:                     -0.67*yz +  xt[2] - 350    -yu <= 0;
    inner_con2: -xt[3] - 0.75*xt[1] + 0.5*yz -  xt[2] + 1388.5 -yu <= 0;
    inner_con3: -xt[3] -  1.5*xt[1] +     yz -2*xt[2] + 2044   -yu <= 0;
    inner_con4: -xt[3] -  1.5*xt[1] +     yz -2*xt[2] - 2*xt[4] + 2830 -yu <= 0;
    inner_con5:  xt[3] +  1.5*xt[1] -     yz +2*xt[2] + 3*xt[4] - 3153 -yu <= 0;
# KKT conditions:
   stationarity_1:    l[1] + l[2] + l[3] + l[4] + l[5] + l[8] - l[9] = 1;
    stationarity_2:    l[1]*(-0.67) + l[2]*(0.5) + l[3] + l[4] - l[5] - l[6] +l[7] = 0;
    complementarity_1: l[1]*(                  -0.67*yz +  xt[2] - 350    -yu) = 0;
    complementarity_2: l[2]*(-xt[3] - 0.75*xt[1] + 0.5*yz -  xt[2] + 1388.5 -yu) = 0;
    complementarity_3: l[3]*(-xt[3] -  1.5*xt[1] +     yz -2*xt[2] + 2044   -yu) = 0;
    complementarity_4: l[4]*(-xt[3] -  1.5*xt[1] +     yz -2*xt[2] - 2*xt[4] + 2830 -yu) = 0;
    complementarity_5: l[5]*( xt[3] +  1.5*xt[1] -     yz +2*xt[2] + 3*xt[4] - 3153 -yu) = 0;
    complementarity_6: l[6]*(-yz) = 0;
    complementarity_7: l[7]*( yz-500) = 0;
    complementarity_8: l[8]*(-yu-50) = 0;
    complementarity_9: l[9]*( yu-100) = 0;
# Data for parameter bounds
data;
param xtlb :=
    1  520
    2  288
    3  483
    4  213
;
param xtub :=
    1  720
    2  488
    3  683
    4  413
;
