#' Price of a Batch
#' 
#' The price for processing the batch.
#' 
#' @param batch_id ID for the batch; Required; String.
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @return named list
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' @examples \dontrun{
#' batch_price("batch_id")
#' }

batch_price <- function(batch_id="", ...) {

    captr_CHECKAUTH()
   
    if (is.null(batch_id) | identical(batch_id, "")) stop("Provide a Valid Batch ID.")

    res <- captr_GET(paste0("batch/", batch_id, "/price"), ...)

    return(invisible(res))

}

