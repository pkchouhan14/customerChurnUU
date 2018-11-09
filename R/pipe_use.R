# x %>% f(y) is another way of writing f(x, y).
# That is, the left hand side of the pipe, x, becomes the first argument to the function, f(), on the right hand side of the pipe.

# cyl <- split(mtcars, mtcars$cyl) map(cyl, ~ lm(mpg ~ wt, data = .)) ==  split(mtcars, mtcars$cyl) %>%  map(~ lm(mpg ~ wt, data = .))

