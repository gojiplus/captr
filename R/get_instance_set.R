#' Get Instance Set
#' 
#' If you are interested in getting data from one particular form, use this function.
#' 
#' @param instance_set_id ID for the form (instance_set) (which you get from list_instance_sets)
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @export
#' 
#' @references \url{https://shreddr.captricity.com/developer/}
#' 
#' @examples \dontrun{
#' get_instance_set("instance_set_id")
#' }

get_instance_set <- function(instance_set_id = "", ...) {

  if ( is.null(instance_set_id) | identical(instance_set_id, "")) {
    stop("Provide a Valid Instance Set ID.")
  }

  tag <- captr_GET(paste0("instance-set/", instance_set_id, "/", "shred/"), ...)

  tag

}
