#' Upload Image
#' 
#' Upload an image to captricity.
#' 
#' @param batch_id ID for the batch
#' @param path_to_image Path to the image you want OCRd
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' @examples \dontrun{
#' upload_image("batch_id", "path_to_image")
#' }

upload_image <- function(batch_id="", path_to_image="")
{
    app_token = getOption("CaptricityToken")
    if( is.null(app_token)) stop("Please set application token using set_token('app_token').")
    
    if ( is.null(batch_id) | batch_id=="") stop("Provide a Valid Batch ID.")
    if ( is.null(path_to_image) | path_to_image=="") stop("Provide a Valid Path To Image.")

    h <- new_handle()
    handle_setopt(h,  customrequest = "POST")
    handle_setheaders(h, "Captricity-API-Token" = app_token)
    handle_setform(h, uploaded_file = form_file(path_to_image))

    tag_con    <- curl_fetch_memory(paste0("https://shreddr.captricity.com/api/v1/batch/", batch_id, "/batch-file/"), handle=h)
    tag        <- fromJSON(rawToChar(tag_con$content))
    tag
    return(invisible(tag))

}

