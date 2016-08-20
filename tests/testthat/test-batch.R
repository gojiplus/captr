context("Create Batch")

test_that("batch creation happens successfully", {
  skip_on_cran()
  
  token_file <- file("captr_key", "r")
  token <- suppressWarnings(readLines(token_file))
  close(token_file)

  set_token(token)
  batch <- create_batch("new_batch")
  expect_that(batch, is_a("list"))
 
  expect_error(create_batch(""), "Specify a valid batch_name.", fixed=TRUE)

  l_batches <- list_batches()
  expect_that(l_batches, is_a("data.frame"))
  expect_equal(grepl("new_batch", l_batches$name[1]), TRUE)

  price <- batch_price(batch$id)
  expect_that(price, is_a("list"))

  details <- get_batch_details(batch$id)
  expect_that(details,  is_a("list"))

  l_files <- list_batch_files(batch$id)
  expect_that(l_files,  is_a("list"))

  path <- system.file("extdata/wisc_ads", package = "captr")
  u_file <- upload_image(batch$id, dir(path, full.names = TRUE)[1])
  expect_that(u_file$uuid, is_a("character"))

  ready <- test_readiness(batch$id)
  expect_equal(length(ready$errors) > 1, TRUE)

  submit <- submit_batch(batch$id)
  expect_equal(submit$message, "Batch is not ready to submit")

  del <- delete_batch(batch$id)
  expect_that(del, is_a("list"))


})