#' List Jobs
#'
#' A list of jobs owned by the calling account. 
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-jobs}
#' @examples \dontrun{
#' list_jobs()
#' }

list_jobs <- function()
{
    
    captr_CHECKAUTH()
  
    h <- new_handle()
    handle_setopt(h,  customrequest = "GET")
    handle_setheaders(h, "Captricity-API-Token" = Sys.getenv('CaptricityToken'))

    tag_con    <- curl_fetch_memory("https://shreddr.captricity.com/api/v1/job/", handle=h)
    tag        <- fromJSON(rawToChar(tag_con$content))
    tag

    return(invisible(tag))

}


