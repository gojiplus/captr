#' Set Template ID
#' 
#' To digitize documents, create a template using the Captricity Web UI at \url{https://shreddr.captricity.com/job/} 
#' The template tells Captricity which data to get from where in the document.
#' Set the relevant document id using this function
#' 
#' @param template_id ID for the template
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' @examples \dontrun{
#' set_template_id(template_id="template_id")
#' }

set_template_id <- function(template_id="")
{
    app_token = getOption("CaptricityToken")
    if( is.null(app_token)) stop("Please set application token using set_token('app_token').")
    
    if ( is.null(template_id) | template_id=="") stop("Provide a Valid Template ID.")

    h <- new_handle()
    handle_setopt(h,  customrequest = "POST")
    handle_setheaders(h, "Captricity-API-Token" = app_token)
    handle_setform(h, id= template_id)

    tag_con    <- curl_fetch_memory("https://shreddr.captricity.com/api/v1/document/", handle=h)
    tag        <- fromJSON(rawToChar(tag_con$content))
    tag
    return(invisible(tag))

}

