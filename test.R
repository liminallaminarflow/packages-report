#' ---
#' output: github_document
#' ---

x <- rnorm(100, 100)

y <- x + (.2 * rnorm(100))

xy_mod <- lm(x ~ y)

summary(xy_mod)

plot(xy_mod)

# merge conflict mode


# another test--what does my git log look like with this github-edited comment?
