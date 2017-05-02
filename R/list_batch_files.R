#' List all the files in a batch
#' 
#' @param batch_id ID for the batch; Required; String
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @return list. If no files in a batch, an empty list
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' @examples \dontrun{
#' list_batch_files("batch_id")
#' }

list_batch_files <- function(batch_id = "", ...) {

  if ( is.null(batch_id) | identical(batch_id, "")) {
    stop("Provide a Valid Batch ID.")
  }

  res <- captr_GET(paste0("batch/", batch_id, "/", "batch-file"), ...)

  res
}
