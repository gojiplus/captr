#' List Instance Sets
#' 
#' List all the forms (instance sets) for a particular job. 
#' Use this to get ids of forms (instance sets) you want to download. 
#' 
#' @param job_id ID for the job (which you get from related_job_id field of submit_batch)
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' 
#' @examples \dontrun{
#' list_instance_sets(job_id = "job_id")
#' }

list_instance_sets <- function(job_id = "", ...) {

  if ( is.null(job_id) | identical(job_id, "")) stop("Provide a Valid Job ID.")

  tag <- captr_GET(paste0("job/", job_id, "/", "instance-set/"), ...)

  tag
}
