#' Set Template ID
#' 
#' To digitize documents, create a template using the Captricity Web UI at \url{https://shreddr.captricity.com/job/} 
#' The template tells Captricity which data to get from where in the document.
#' 
#' Get the template ids of all the documents
#' 
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @return named list
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' 
#' @examples \dontrun{
#' get_template_id()
#' }

get_template_id <- function(...) {

  res <- captr_GET(path = "document/", ...)

  res

}
