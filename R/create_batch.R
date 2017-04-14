#' Create Batch
#'
#' Create a new batch. 
#'
#' @param batch_name name of the batch; Required; character
#' @param \dots Additional arguments passed to \code{\link{captr_POST}}.
#'  
#' @return List of length 26. Includes information like created_by, user_id, etc.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-batch}
#' @examples \dontrun{
#' create_batch(batch_name="name_of_batch")
#' }

create_batch <- function(batch_name = NULL, ...) {

  if (is.null(batch_name) | identical(batch_name, "")) stop("Specify a valid batch_name.")

  query <-  list(name = batch_name)

  res <-  captr_POST(path = "batch/", query, ...)

  res
}
