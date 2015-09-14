#' Sets Application ID and Secret
#'
#' Set Client ID and Secret. Needed for interfacing with Clarifai. Run this before anything else.
#' @param appdetails Required; A vector of client_id, client_secret. Get these from \url{https://shreddr.captricity.com/developer/}. 
#' Set them before you use other functions.
#' @keywords Sets Client ID and Secret
#' @export
#' @references \url{https://shreddr.captricity.com/developer/}
#' @examples \dontrun{
#' set_token("app_token")
#' }

set_token <- function(appdetails=NULL)
{
    if(!is.null(appdetails))
        options(CaptricityToken = appdetails)
    else
        return(getOption('CaptricityToken'))    
}

 