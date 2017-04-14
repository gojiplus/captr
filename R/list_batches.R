#' List Batches
#'
#' A list of batches owned by the calling account.
#'
#' @param \dots Additional arguments passed to \code{\link{captr_GET}}.
#'
#' @return named list. Prints number of batches by default. Named list has 15 items:
#' \code{total_batch_cost_in_fields, user_included_fields_per_page, can_be_priced,
#' user_pay_go_fields_applied, page_count, total_user_cost_in_cents, user_subscription_fields_applied, 
#' user_subscription_fields_per_month, overage_field_count, total_user_cost_in_fields, batch_id,
#' user_subscription_fields, user_pay_go_fields, user_fields_per_overage_field, user_fields_per_page
#' }
#' 
#' @export
#' @references \url{https://shreddr.captricity.com/developer/api-reference/#v1-batches}
#' 
#' @examples \dontrun{
#' list_batches()
#' }

list_batches <- function(...) {
      
    res <- captr_GET("batch/", ...)

    cat("No. of batches:", nrow(res), "\n")

    res

}

