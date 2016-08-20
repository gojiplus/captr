#' List Batches
#'
#' A list of batches owned by the calling account.
#'
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#'
#' @return data.frame. Prints number of batches by default.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-batches}
#' @examples \dontrun{
#' list_batches()
#' }

list_batches <- function(...) {
      
    res <- captr_GET("batch/", ...)

    cat("No. of batches:", nrow(res), "\n")

    return(invisible(res))

}

