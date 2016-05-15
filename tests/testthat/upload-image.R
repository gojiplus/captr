context("Upload Image")

test_that("upload image happens successfully", {
  skip_on_cran()
  
  token_file <- file("captr_key", "r")
  token <- suppressWarnings(readLines(token_file))
  close(token_file)

  set_token(token)
  
  batch <- create_batch("new_batch")
  path  <- system.file("extdata/wisc_ads", package = "captr")
  files <- dir(path, full.names = TRUE)
  upimage <- lapply(files, upload_image, batch_id = batch$id)
  expect_that(upimage, is_a("list"))
})