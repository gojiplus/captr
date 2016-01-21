#' List Documents
#'
#' A list of document resources owned by the calling account.
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-documents}
#' @examples \dontrun{
#' list_docs()
#' }

list_docs <- function()
{
    
    captr_CHECKAUTH()
  
    h <- new_handle()
    handle_setopt(h,  customrequest = "GET")
    handle_setheaders(h, "Captricity-API-Token" = Sys.getenv('CaptricityToken'))

    tag_con    <- curl_fetch_memory("https://shreddr.captricity.com/api/v1/document/", handle=h)
    tag        <- fromJSON(rawToChar(tag_con$content))
    tag

    return(invisible(tag))

}


