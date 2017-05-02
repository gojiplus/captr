#' @title captr: R Client for the Capticrity API
#' 
#' @name captr-package
#' @aliases captr
#'
#' @description OCR images and forms. See \url{https://captricity.com/}. 
#' Details about results of calls to the API can be found at \url{https://shreddr.captricity.com/developer/}.
#'
#' Your need credentials to use this application. 
#' If you haven't already, you can get this at \url{https://shreddr.captricity.com/developer/}.
#' 
#' @importFrom utils URLencode
#' @import curl
#' @importFrom jsonlite fromJSON 
#' @docType package
#' @author Gaurav Sood
NULL

#' Check if authentication information is there
#' 

captr_CHECKAUTH <- function() {

  app_token <- Sys.getenv("CaptricityToken")
  if (identical(app_token, "")) {
    stop("Please set application token using set_token('app_token').")
  }
}

#'
#' GET
#' 
#' @param path path to specific API request URL 
#' @param query query list 
#' @param \dots Additional arguments passed to \code{\link[curl]{curl_fetch_memory}}.
#' 
#' @return list

captr_GET <- function(path = "", query = NULL, ...) {

  captr_CHECKAUTH()

  h <- new_handle()
  handle_setopt(h,  customrequest = "GET")
  handle_setheaders(h, "Captricity-API-Token" = Sys.getenv("CaptricityToken"))

  target_url <- paste0("https://shreddr.captricity.com/api/v1/", path, query)
  tag_con    <- curl_fetch_memory(target_url, handle = h, ...)
  tag        <- fromJSON(rawToChar(tag_con$content))
  tag
}

#'
#' POST
#' 
#' @param path path to specific API request URL 
#' @param query query list 
#' @param \dots Additional arguments passed to \code{\link[curl]{curl_fetch_memory}}.
#' 
#' @return list

captr_POST <- function(path = "", query = NULL, ...) {

  captr_CHECKAUTH()

  h <- new_handle()
  handle_setopt(h,  customrequest = "POST")
  handle_setheaders(h, "Captricity-API-Token" = Sys.getenv("CaptricityToken"))
  handle_setform(h, .list = query)

  target_url <- paste0("https://shreddr.captricity.com/api/v1/", path)
  tag_con    <- curl_fetch_memory(target_url, handle = h, ...)
  tag        <- fromJSON(rawToChar(tag_con$content))
  tag
}

#'
#' DELETE
#' 
#' @param path path to specific API request URL 
#' @param query query list 
#' @param \dots Additional arguments passed to \code{\link[curl]{curl_fetch_memory}}.
#' 
#' @return list

captr_DELETE <- function(path = "", query = NULL, ...) {

  captr_CHECKAUTH()

  h <- new_handle()
  handle_setopt(h,  customrequest = "DELETE")
  handle_setheaders(h, "Captricity-API-Token" = Sys.getenv("CaptricityToken"))
  handle_setform(h, .list = query)

  target_url <- paste0("https://shreddr.captricity.com/api/v1/", path)
  tag_con    <- curl_fetch_memory(target_url, handle = h, ...)
  tag        <- fromJSON(rawToChar(tag_con$content))
  tag
}
