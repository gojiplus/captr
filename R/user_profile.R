#' User Profile
#'
#' Provides account information for the provided API Token.
#' 
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @return named list
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-user_profile}
#' @examples \dontrun{
#' user_profile()
#' }

user_profile <- function(...)
{
    
    captr_CHECKAUTH()
  
	res <- captr_GET(path="account/user-profile", ...)

    res

}


