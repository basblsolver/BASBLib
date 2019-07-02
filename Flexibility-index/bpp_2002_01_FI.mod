# ==============================================================================
# AMPL coding by Gao Ji & Remigijus Paulavicius
# Name:
#   bpp_2002_01_FI.mod
#
# Original source:
# - Illustrative example in:
#   Bansal, V., Perkins, J. D. & Pistikopoulos, E. N., 2002. Flexibility
#   Analysis and Design Using a Parametric Programming Framework.
#   AIChE Journal, 48(12), pp. 2851-2868.
#   http://dx.doi.org/10.1002/aic.690481213
#
# Optimal solution when d1=10, d2=2:
#   xd* = 0.2052
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   4       2       4       2       3       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/Flexibility-index/bpp_2002_01_FI
# ==============================================================================
param d1	:= 10	;   # Design parameter 1
param d2 	:= 2	;   # Design parameter 2

set J :={1..2};
var        xt{j in J} >=0, <=6 ;   # Outer variables, theta1 theta2
var        xd >=    0,  <= 3   ;   # Flexibility index
var      xpsi >=   -10, <= 10   ;   # Artificial variable 1
var        yz >=   -100,<= 100  ;   # Inner variable, z
var        yu >=   -10, <= 10   ;   # Artificial variable 2
var  l{1..9} >=    0            ;   # KKT multipliers

minimize outer_obj: xd;   # Outer objective

subject to
# Outer constraints:
    outer_con1: xpsi = 0;
    outer_con2: xpsi = yu + (xd-xd)*yu + (xpsi-xpsi)*yu;  # Added artificial `(xpsi-xpsi)*yu` to avoid variable reordering in AMPL @Remis

    outer_con3:  3-xd*1-xt[1] <= 0;
    outer_con4:  xt[1]-3-xd*1 <= 0;
    outer_con5:  3-xd*1-xt[2] <= 0;
    outer_con6:  xt[2]-3-xd*1 <= 0;
# Inner objective:
    inner_obj: yu = 0;
# Inner constraints
    inner_con1: 0.08*yz^2-xt[1]-xt[2]/20+d1/5-13 - yu <= 0;
    inner_con2: -yz-(xt[1]^0.5)/3+d2/20+11+1/3 - yu <= 0;
    inner_con3: exp(0.21*yz)+xt[1]+xt[2]/20-d1/5-d2/20-11 - yu <= 0;
# KKT conditions:
    stationarity_1:    l[1]+l[2]+l[3]+l[6]-l[7] = 1;
    stationarity_2:    l[1]*(0.08*2*yz)-l[2]+l[3]*(0.21*exp(0.21*yz))-l[4]+l[5]= 0;
    complementarity_1: l[1]*(0.08*yz^2-xt[1]-xt[2]/20+d1/5-13 - yu) = 0;
    complementarity_2: l[2]*(-yz-(xt[1]^0.5)/3+d2/20+11+1/3 - yu) = 0;
    complementarity_3: l[3]*(exp(0.21*yz)+xt[1]+xt[2]/20-d1/5-d2/20-11 - yu) = 0;
    complementarity_4: l[4]*(-yz-100) = 0;
    complementarity_5: l[5]*( yz-100) = 0;
    complementarity_6: l[6]*(-yu-10) = 0;
    complementarity_7: l[7]*( yu-10) = 0;