#' Delete a Batch
#' 
#' @param batch_id ID for the batch
#' @param \dots Additional arguments passed to \code{\link{captr_DELETE}}.
#' 
#' @export
#' 
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-batches}
#' 
#' @examples \dontrun{
#' delete_batch("batch_id")
#' }

delete_batch <- function(batch_id = "", ...) {

  if ( is.null(batch_id) | identical(batch_id, "")) {
    stop("Provide a Valid Batch ID.")
  }

  tag <-  captr_DELETE(path = paste0("batch/", batch_id), ...)

  if (tag$status == "success") {
    cat("Batch", batch_id, "successfully deleted \n")
  } else {
    warning("Error:", tag$status, "\n")
  }

  tag
}
