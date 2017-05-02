#' Test Readiness of a Batch
#' 
#' Check if the batch is ready to be processed
#' 
#' @param batch_id ID for the batch. Required. String.
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' 
#' @examples \dontrun{
#' test_readiness("batch_id")
#' }

test_readiness <- function(batch_id = "", ...) {

  if ( is.null(batch_id) | identical(batch_id, "")) {
    stop("Provide a Valid Batch ID.")
  }

  res <- captr_GET(paste0("batch/", batch_id, "/", "readiness"), ...)

  res

}
