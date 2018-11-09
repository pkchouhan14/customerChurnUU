
map_coef <- function(df){

  #map_dbl(cyl, function(df) mean(df$disp)) ==  map_dbl(cyl, ~ mean(.$disp))

# Save the result from the previous exercise to the variable models
models <- map(cyl, ~ lm(mpg ~ wt, data = .))

# Use map and coef to get the coefficients for each model: coefs
coefs <- map(models, coef)

# Use string shortcut to extract the wt coefficient
map(coefs, "wt")

# Another useful shortcut for subsetting is to pass a numeric vector as the .f argument.
# This works just like passing a string but subsets by index rather than name.

# use map_dbl with the numeric shortcut to pull out the second element
map_dbl(coefs, 2)
}
