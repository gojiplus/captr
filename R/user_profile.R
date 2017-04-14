#' User Profile
#'
#' Provides account information for the provided API Token.
#' 
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#' 
#' @return named list with the following elements: \code{username, deny_batch_submission_for_digitization,
#' account_balance, user_id, enrolled_subscription_is_annualized, enrolled_subscription, 
#' enrolled_subscription_is_trial, trial_eligible, remaining_quota}
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-user_profile}
#' @examples \dontrun{
#' user_profile()
#' }

user_profile <- function(...) {
    
    captr_CHECKAUTH()
  
	res <- captr_GET(path="account/user-profile", ...)

    res

}


