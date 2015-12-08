# ------------------------------------------------------------------------------
# Example 3.9
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs.
# ------------------------------------------------------------------------------
# OUTER VARIABLES
var x >= -10, <= 10;

# INNER VARIABLES
var y >= -1, <= 1;

# KKT MULTIPLIERS
var mu1 >= 0, <= 10;

var mu2 >= 0, <= 10;

# OUTER OBJECTIVE
minimize outer_obj: x;

# OUTER CONSTRAINT
subject to outer_con: -x + y <= 0;

# Added artificial x*(y-y), to get right variable order in .col file
# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: x*(y-y) + y^3 <= 0;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: 3*y^2 - mu1 + mu2 = 0;

subject to complementarity_1: mu1*(-1 - y) = 0;

subject to complementarity_2: mu2*(y - 1) = 0;











