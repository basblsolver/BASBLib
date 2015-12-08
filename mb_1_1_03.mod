                                               # ------------------------------------------------------------------------------
# Example 3.10
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs.
# ------------------------------------------------------------------------------
# OUTER VARIABLES
var x >= 0.1, <= 1;

# INNER VARIABLES
var y >= -1, <= 1;

# KKT MULTIPLIERS
var mu1 >= 0, <= 2;

var mu2 >= 0, <= 2;

# OUTER OBJECTIVE
minimize outer_obj: y;

# INNER OBJECTIVE AS CONSTRAINT: <= 0
subject to inner_obj: x*(16*y^4 + 2*y^3 - 8*y^2 - 1.5*y + 0.5) <= 0;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: x*(64*y^3 + 6*y^2 - 16*y - 1.5) - mu1 + mu2 = 0;

subject to complementarity_1: mu1*(-1 - y) = 0;

subject to complementarity_2: mu2*(y - 1) = 0;











