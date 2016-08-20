#' List Documents
#'
#' A list of document resources owned by the calling account.
#' 
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @return data.frame
#' Prints total number of documents by default.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-documents}
#' 
#' @examples \dontrun{
#' list_docs()
#' }

list_docs <- function(...) {
    
    res <- captr_GET("document/", ...)

    cat("No. of document resources:", nrow(res), "\n")

    return(invisible(res))
}


