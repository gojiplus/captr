#' Track Progress of a Job
#' 
#' Check what percentage of the job is digitized
#' 
#' @param job_id ID for the job (which you get from related_job_id field of submit_batch)
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' @examples \dontrun{
#' submit_batch("batch_id")
#' }

track_progress <- function(job_id="")
{
    
    app_token = Sys.getenv('CaptricityToken')
    if(identical(env_token, "")) stop("Please set application token using set_token('app_token').")

    if ( is.null(job_id) | job_id=="") stop("Provide a Valid Job ID.")

    h <- new_handle()
    handle_setopt(h,  customrequest = "GET")
    handle_setheaders(h, "Captricity-API-Token" = app_token)

    tag_con    <- curl_fetch_memory(paste0("https://shreddr.captricity.com/api/v1/job/", job_id), handle=h)
    tag        <- fromJSON(rawToChar(tag_con$content))
    tag
    return(invisible(tag))
    
}

