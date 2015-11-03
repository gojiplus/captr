context("Create Batch")

test_that("batch creation happens successfully", {
  skip_on_cran()
  token <- readRDS("token_file.rds")
  set_token(token)
  batch <- create_batch("new_batch")
  expect_that(batch, is_a("list"))
})