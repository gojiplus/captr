#' Submit the Batch for Processing
#' 
#' 
#' @param batch_id ID for the batch. Required. String.
#' @param \dots Additional arguments passed to \code{\link{captr_POST}}.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' 
#' @examples \dontrun{
#' submit_batch("batch_id")
#' }

submit_batch <- function(batch_id="", ...) {

  captr_CHECKAUTH()

  if ( is.null(batch_id) | identical(batch_id, "")) stop("Provide a Valid Batch ID.")

  res <- captr_POST(path = paste0("batch/", batch_id, "/submit"), ...)

  res

}
