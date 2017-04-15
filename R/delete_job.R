#' Delete a Job
#' 
#' @param job_id ID for the job (which you get from related_job_id field of submit_batch)
#' @param \dots Additional arguments passed to \code{\link{captr_DELETE}}.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-batches}
#' 
#' @examples \dontrun{
#' delete_job("job_id")
#' }

delete_job <- function(job_id = "", ...) {

  if ( is.null(job_id) | identical(job_id, "")) stop("Provide a Valid Job ID.")

  tag <-  captr_DELETE(path = paste0("job/", job_id), ...)

  tag
}
