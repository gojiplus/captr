#' Get All the Data For a Particular Job in a csv
#' 
#' Get all the data
#' 
#' @param instance_set_id ID for the form (instance_set) (which you get from list_instance_sets)
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' @examples \dontrun{
#' get_all(job_id ="job_id")
#' }

get_all <- function(job_id ="")
{
    app_token = getOption("CaptricityToken")
    if( is.null(app_token)) stop("Please set application token using set_token('app_token').")
    
    if ( is.null(job_id) | job_id=="") stop("Provide a Valid Job ID.")

    h <- new_handle()
    handle_setopt(h,  customrequest = "GET")
    handle_setheaders(h, "Captricity-API-Token" = app_token)

    tag_con    <- curl_fetch_memory(paste0("https://shreddr.captricity.com/api/v1/job/", job_id, "/csv/"), handle=h)
    tag        <- fromJSON(rawToChar(tag_con$content))
    tag
    return(invisible(tag))
    
}

