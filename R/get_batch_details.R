#' Get Details of a particular batch
#' 
#' Get details such as who the batch was created by, user id of the creator, name of the batch, whether or not the batch has been submitted for processing, files in the batch, etc.
#' 
#' @param batch_id ID for the batch
#' 
#' @return list of length 26. 
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-batch}
#' @examples \dontrun{
#' get_batch_details("batch_id")
#' }

get_batch_details <- function(batch_id="") {
    
    captr_CHECKAUTH()
 
    if ( is.null(batch_id) | identical(batch_id, "")) stop("Provide a Valid Batch ID.")

    h <- new_handle()
    handle_setopt(h,  customrequest = "GET")
    handle_setheaders(h, "Captricity-API-Token" = Sys.getenv('CaptricityToken'))

    tag_con    <- curl_fetch_memory(paste0("https://shreddr.captricity.com/api/v1/batch/", batch_id), handle=h)
    tag        <- fromJSON(rawToChar(tag_con$content))
    tag
    return(invisible(tag))

}

