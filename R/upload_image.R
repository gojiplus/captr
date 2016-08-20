#' Upload Image
#' 
#' Upload an image to captricity.
#' 
#' @param batch_id ID for the batch
#' @param path_to_image Path to the image you want OCRd
#' @param \dots Additional arguments passed to \code{\link{captr_POST}}.
#' 
#' 
#' @export
#' 
#' @references \url{https://shreddr.captricity.com/developer/}
#' 
#' @examples \dontrun{
#' upload_image("batch_id", "path_to_image")
#' }

upload_image <- function(batch_id="", path_to_image="", ...) {
    
    captr_CHECKAUTH()
 
    if ( is.null(batch_id) | identical(batch_id, "")) stop("Provide a Valid Batch ID.")
        
    if (!file.exists(path_to_image)) stop("File Doesn't Exist. Please check the path.")

    query = list(uploaded_file = form_file(path_to_image))
    res <- captr_POST(path=paste0("batch/", batch_id, "/batch-file/"), query,...)

    return(invisible(res))

}

