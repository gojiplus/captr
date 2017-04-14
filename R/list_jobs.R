#' List Jobs
#'
#' A list of jobs owned by the calling account. 
#' 
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-jobs}
#' 
#' @examples \dontrun{
#' list_jobs()
#' }

list_jobs <- function(...) {
    
    res <- captr_GET("job/", ...)

    cat("No. of jobs:", nrow(res), "\n")

    res

}

 
