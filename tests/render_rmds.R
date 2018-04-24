# call rmarkdown on all .Rmd files
f <- list.files(recursive = TRUE)
rmds <- f[grepl(".Rmd$", f)]
lapply(rmds, rmarkdown::render)

# output lints
for (rmdfile in rmds) {
  print(lintr::lint(rmdfile))
}

# expect no lints
for (rmdfile in rmds) {
  lintr::expect_lint(checks = NULL, file = rmdfile)
}
