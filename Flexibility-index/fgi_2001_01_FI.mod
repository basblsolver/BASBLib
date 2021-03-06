# ==============================================================================
# AMPL coding by Gao Ji & Remigijus Paulavicius
# Name:
#   fgi_2001_02_FI.mod
#
# Original source:
# - Example 2 in:
#   Floudas, C. A., Gusmus, Z. H. & Ierapetritou, M. G., 2001. Global Optimization
#   in Design under Uncertainty: Feasibility Test and Flexibility Index Problems.
#   Ind. Eng. Chem. Res., pp. 4267-4282.
#   http://pubs.acs.org/doi/abs/10.1021/ie001014g
#
# Optimal solution:
#   xd* = 0.618
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   3       2       4       2       5       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/Flexibility-index/fgi_2001_01_FI
# ==============================================================================
param P1	:= 100	   ;   # Inlet pressure
param D  	:= 0.0762  ;   # Pipe diameter
param H 	:= 1.3	   ;   # Pump head
param W 	:= 31.2	   ;   # Driver power
param Cvmax	:= 0.0577  ;   # Control valve size
param r 	:= 0.05	   ;   # Control valve range
param e 	:= 20	   ;   # Outlet pressure control tolerance
param n		:= 0.5	   ;   # Pump efficiency, eta
param rho 	:= 1000	   ;   # Liquid density
param k 	:= 9.101E-6;   # Pressure drop constant

set J :={1..2};
param xtlb{J};                 # Lower Bounds for the outer variables
param xtub{J};                 # Upper Bounds for the outer variables

var       xt{j in J} >= xtlb[j], <= xtub[j];    # Outer variables, P2 m
var       xd  >=    0,  <= 1.45 ;         # Flexibility index
var     xpsi  >= -100,  <= 1000;       # Artificial variable 1
var       yz  >= r*Cvmax,  <= Cvmax;   # Inner variable, Cv
var       yu  >= -100,  <= 1000;       # Artificial variable 2
var  l{1..11} >=    0;                 # KKT multipliers

minimize outer_obj: xd;   # Outer objective

subject to
# Outer constraints:
    outer_con1: xpsi = 0;
    outer_con2: xpsi = yu + (xd-xd)*yu + (xpsi-xpsi)*yu;  # Added artificial `(xpsi-xpsi)*yu` to avoid variable reordering in AMPL @Remis

    outer_con3:  800-xd*550-xt[1] <= 0;
    outer_con4:  xt[1]-800-xd*200 <= 0;
    outer_con5:  10-xd*5-xt[2] <= 0;
    outer_con6:  xt[2]-10-xd*2 <= 0;

# Inner objective:
    inner_obj: yu = 0;
# Inner constraints
    inner_con1: ( P1+rho*H-e-k*xt[2]^1.84*D^(-5.16)-xt[1])*(rho*yz^2)-xt[2]^2-yu <= 0;
    inner_con2: (-P1-rho*H-e+k*xt[2]^1.84*D^(-5.16)+xt[1])*(rho*yz^2)+xt[2]^2-yu <= 0;
    inner_con3:  xt[2]*H-n*W-yu <= 0;
    inner_con4:  yz-Cvmax-yu <= 0;
    inner_con5: -yz+r*Cvmax-yu <= 0;
# KKT conditions:
    stationarity_1:    l[1]+l[2]+l[3]+l[4]+l[5]+l[8]-l[9] = 1;
    stationarity_2:    l[1]*( (P1+rho*H-e-k*xt[2]^1.84*D^(-5.16)-xt[1])*2*yz*rho)+l[2]*((-P1-rho*H-e+k*xt[2]^1.84*D^(-5.16)+xt[1])*2*yz*rho)+l[4]-l[5]-l[6]+l[7] = 0;
    complementarity_1: l[1]*( (P1+rho*H-e-k*xt[2]^1.84*D^(-5.16)-xt[1])*(rho*yz^2)-xt[2]^2-yu) = 0;
    complementarity_2: l[2]*((-P1-rho*H-e+k*xt[2]^1.84*D^(-5.16)+xt[1])*(rho*yz^2)+xt[2]^2-yu) = 0;
    complementarity_3: l[3]*(xt[2]*H-n*W-yu) = 0;
    complementarity_4: l[4]*(yz-Cvmax-yu) = 0;
    complementarity_5: l[5]*(-yz+r*Cvmax-yu) = 0;
    complementarity_6: l[6]*(-yz+r*Cvmax) = 0;
    complementarity_7: l[7]*( yz-Cvmax) = 0;
    complementarity_8: l[8]*(-yu-100) = 0;
    complementarity_9: l[9]*( yu-1000) = 0;
# Data for parameter bounds
data;
param xtlb :=
    1  2.5
    2  2.75
;
param xtub :=
    1  1090
    2  12.9
;
