# ==============================================================================
# AMPL coding by Gao Ji & Remigijus Paulavicius
# Name:
#   bpp_2002_02_FI.mod
#
# Original source:
# - Process example 1 in:
#   Bansal, V., Perkins, J. D. & Pistikopoulos, E. N., 2002. Flexibility
#   Analysis and Design Using a Parametric Programming Framework.
#   AIChE Journal, 48(12), pp. 2851-2868.
#   http://dx.doi.org/10.1002/aic.690481213
#
# Optimal solution when d1=8,d2=12,d3=12:
#   xd* = 0.3036
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   5      12       6       2       6       7
# ------------------------------------------------------------------------------
#
# For more information, please lbisit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/Flexibility-index/bpp_2002_02_FI
# ==============================================================================
param d1	:= 8	        ;   # Design parameter 1
param d2 	:= 12	        ;   # Design parameter 2
param d3 	:= 12	        ;   # Design parameter 3

set J :={1..3};
param xtlb{J};                 # Lower Bounds for the outer lbariables
param xtub{J};                 # Upper Bounds for the outer lbariables
set K :={1..4};
param yzlb{K};                 # Lower Bounds for the inner lbariables
param yzub{K};                 # Upper Bounds for the inner lbariables
set M :={1..7};
param yslb{M};                 # Lower Bounds for the state lbariables
param ysub{M};                 # Upper Bounds for the state lbariables

var       xt{j in J} >= xtlb[j], <= xtub[j];  # Outer lbariables, SA SB DC
var       xd  >= 0 , <= 10     ;    # Flexibility index
var     xpsi  >= -100 , <= 100;    # Artificial lbariable 1
var       yz{k in K} >= yzlb[k], <= yzub[k];  # Inner lbariables, F2 F3 F4 F9
var       yu  >= -100 , <= 100;    # Artificial lbariable 2
var       ys{m in M} >= yslb[m], <= ysub[m];  # States lbariables, F1 F5 F6 F7 F8 F10 F11
var  la{8..39} >= 0 ;          # KKT multipliers for inequalities
var  lb{1..7} ;                # KKT multipliers for equalities

minimize outer_obj: xd ;  # Outer objectilbe

subject to
# Outer constraints:
    outer_con1: xpsi = 0;
    outer_con2: xpsi = yu + (xd-xd)*yu + (xpsi-xpsi)*yu;  # Added artificial `(xpsi-xpsi)*yu` to avoid variable reordering in AMPL @Remis

    outer_con3: xt[1]-24-xd*4 <= 0;
    outer_con4: 24-xd*4-xt[1] <= 0;
    outer_con5: xt[2]-12-xd*2 <= 0;
    outer_con6: 12-xd*2-xt[2] <= 0;
    outer_con7: xt[3]-24-xd*4 <= 0;
    outer_con8: 24-xd*4-xt[3] <= 0;
# Inner objectilbe:
    inner_obj: yu = 0;
# Inner constraints
    inner_con1: ys[1]-yz[1]-yz[2]-yz[3] = 0;	# lb[1]
    inner_con2: ys[2]-18*log(1+yz[1]/20) = 0; 	# lb[2]
    inner_con3: ys[3]-20*log(1+yz[2]/21) = 0;   # lb[3]
    inner_con4: ys[4]-15*log(1+yz[3]/26) = 0; 	# lb[4]
    inner_con5: ys[5]-ys[2]-ys[3]-ys[4] = 0;	# lb[5]
    inner_con6: ys[6]-ys[5]-yz[4] = 0;			# lb[6]
    inner_con7: ys[7]-0.9*ys[6] = 0;			# lb[7]
    inner_con8: ys[1]-xt[1] - yu <= 0;			# la[8]
    inner_con9: yz[1]- d1 - yu <= 0;			# la[9]
   inner_con10: yz[2]- d2 - yu <= 0;			# la[10]
   inner_con11: yz[3]- d3 - yu <= 0;			# la[11]
   inner_con12: yz[4]-xt[2] - yu <= 0;			# la[12]
   inner_con13: xt[3]-ys[7] - yu <= 0;			# la[13]
# KKT conditions:
   stationarity_1: la[8]+la[9]+la[10]+la[11]+la[12]+la[13]+la[36]-la[37] = 1; # u
    stationarity_2: (-lb[1]+ la[9]-la[28]+la[29])*(1+yz[1]/20)+lb[2]*(-18/20) = 0; # yz1
    stationarity_3: (-lb[1]+la[10]-la[30]+la[31])*(1+yz[2]/21)+lb[3]*(-20/21) = 0; # yz2
    stationarity_4: (-lb[1]+la[11]-la[32]+la[33])*(1+yz[3]/26)+lb[4]*(-15/26) = 0; # yz3
    stationarity_5: -lb[6]+la[12]-la[34]+la[35] = 0; # yz4
    stationarity_6: lb[1]+la[8]-la[14]+la[15] = 0; # ys1
    stationarity_7: lb[2]-lb[5]-la[16]+la[17] = 0; # ys2
    stationarity_8: lb[3]-lb[5]-la[18]+la[19] = 0; # ys3
    stationarity_9: lb[4]-lb[5]-la[20]+la[21] = 0; # ys4
   stationarity_10: lb[5]-lb[6]-la[22]+la[23] = 0; # ys5
   stationarity_11: lb[6]-lb[7]*0.9-la[24]+la[25] = 0; # ys6
   stationarity_12: lb[7]-la[13]-la[26]+la[27] = 0; # ys7

    complementarity_1: la[8]*(ys[1]-xt[1] - yu) = 0;
    complementarity_2: la[9]*(yz[1]- d1 - yu) = 0;
   complementarity_3: la[10]*(yz[2]- d2 - yu) = 0;
   complementarity_4: la[11]*(yz[3]- d3 - yu) = 0;
   complementarity_5: la[12]*(yz[4]-xt[2] - yu) = 0;
   complementarity_6: la[13]*(xt[3]-ys[7] - yu) = 0;

   complementarity_7: la[14]*(-ys[1]+yslb[1]) = 0;
   complementarity_8: la[15]*( ys[1]-ysub[1]) = 0;
   complementarity_9: la[16]*(-ys[2]+yslb[2]) = 0;
  complementarity_10: la[17]*( ys[2]-ysub[2]) = 0;
  complementarity_11: la[18]*(-ys[3]+yslb[3]) = 0;
  complementarity_12: la[19]*( ys[3]-ysub[3]) = 0;
  complementarity_13: la[20]*(-ys[4]+yslb[4]) = 0;
  complementarity_14: la[21]*( ys[4]-ysub[4]) = 0;
  complementarity_15: la[22]*(-ys[5]+yslb[5]) = 0;
  complementarity_16: la[23]*( ys[5]-ysub[5]) = 0;
  complementarity_17: la[24]*(-ys[6]+yslb[6]) = 0;
  complementarity_18: la[25]*( ys[6]-ysub[6]) = 0;
  complementarity_19: la[26]*(-ys[7]+yslb[7]) = 0;
  complementarity_20: la[27]*( ys[7]-ysub[7]) = 0;

  complementarity_21: la[28]*(-yz[1]+yzlb[1]) = 0;
  complementarity_22: la[29]*( yz[1]-yzub[1]) = 0;
  complementarity_23: la[30]*(-yz[2]+yzlb[2]) = 0;
  complementarity_24: la[31]*( yz[2]-yzub[2]) = 0;
  complementarity_25: la[32]*(-yz[3]+yzlb[3]) = 0;
  complementarity_26: la[33]*( yz[3]-yzub[3]) = 0;
  complementarity_27: la[34]*(-yz[4]+yzlb[4]) = 0;
  complementarity_28: la[35]*( yz[4]-yzub[4]) = 0;

  complementarity_29: la[36]*(-yu-100) = 0;
  complementarity_30: la[37]*( yu-100) = 0;
# Data for parameter bounds
data;
param xtlb :=
    1  4
    2  2
    3  4
;
param xtub :=
    1  44
    2  22
    3  44
;
param yzlb :=
    1  0
    2  0
    3  0
    4  0
;
param yzub :=
    1  1000
    2  1000
    3  1000
    4  1000
;

param yslb :=
    1  0
    2  0
    3  0
    4  0
    5  0
    6  0
    7  0
;
param ysub :=
    1  100
    2  100
    3  100
    4  100
    5  100
    6  100
    7  100
;
