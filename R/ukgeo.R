#' Get data from the UK Geoportal
#' 
#' @param query_string A query string to pass to the UK Geoportal
#' @return A data frame of the results
#' @export
#' @examples
#' ukgeo("Combined_Authorities")
#' u1 = paste0("https://services1.arcgis.com/ESMARspQHYMw9BZ9/",
#'   "arcgis/rest/services/Combined_Authorities_December_2022_EN_BFC",
#'   "/FeatureServer/0/query?where=1%3D1&outFields=*&outSR=4326&f=json")
#' ukgeo(full_query_string = u1)
#' # Get endpoint at: https://services1.arcgis.com/ESMARspQHYMw9BZ9/arcgis/rest/services/Local_Authority_Districts_May_2023_UK_BUC_V2/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson
#' ukgeo("Local_Authority_Districts_May_2023_UK_BUC_V2")
ukgeo = function(
    layer = NULL,
    type = "BUC",
    root = "services1.arcgis.com",
    key = "ESMARspQHYMw9BZ9",
    service = "arcgis/rest/services",
    layer_full = NULL,
    server = "FeatureServer/0",
    query = "where=1%3D1&outFields=*&outSR=4326&f=json",
    endpoint = NULL
) {
  if (is.null(layer_full) ) {
    # Todo: figure out a better way of looking up the full layer based on name:
    if (layer == "Combined_Authorities") {
      layer = "Combined_Authorities_December_2022_EN"
    }
    layer_full = paste(layer, type, sep = "_")
  }
    endpoint = paste0(
        "https://",
        root,
        "/",
        key,
        "/",
        service,
        "/",
        layer_full,
        "/",
        server,
        "/query?",
        query
    )
    sf::read_sf(endpoint)
}
# ukgeo_all = function(
#     query_string = NULL
# ) {
#   if (!is.null(full_query_string)) {
#     httr2::request(full_query_string)
#   }
# }
# faker <- function(resource, ..., quantity = 1, locale = "en_US", seed = NULL) {
#   params <- list(
#     ...,
#     quantity = quantity,
#     locale = locale,
#     seed = seed
#   )
#   names(params) <- paste0("_", names(params))
  
#   request("https://fakerapi.it/api/v1") %>% 
#     req_url_path_append(resource) %>% 
#     req_url_query(!!!params) %>% 
#     req_user_agent("my_package_name (http://my.package.web.site)") %>% 
#     req_perform() %>% 
#     resp_body_json()
# }

# str(faker("images", width = 300))