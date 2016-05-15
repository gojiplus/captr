context("Create Batch")

test_that("batch creation happens successfully", {
  skip_on_cran()
  
  token_file <- file("captr_key", "r")
  token <- suppressWarnings(readLines(token_file))
  close(token_file)

  set_token(token)
  batch <- create_batch("new_batch")
  expect_that(batch, is_a("list"))
})