########################################################################################################################
#' A method for getting the avaiable species from the cellbase web services.
#' @details Please, for details on possible values for the 
#' parameters  and  additional filters of this function refer to https://github.com/opencb/cellbase/wiki and the RESTful 
#' http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/
#' @aliases cbSpeciesClient
#' @param object an object of class CellBaseR
#' @param resource a character vector to specify the resource to be queried
#' @param filters a object of class CellBaseParam specifying additional filters for the query
#' @param ... any extra arguments
#' @return an object of class CellBaseResponse which holds a dataframe with the results of the query
#' @examples
#'    library(cellbaseR)
#'    cb <- CellBaseR()
#'    res <- cbSpeciesClient(object=cb)
#' @export
setMethod("cbSpeciesClient", "CellBaseR",    definition = function(object,...){
    host <- object@host
    species <- "species"
    version <- object@version
    meta <- "meta/"
    categ <- NULL
    subcateg<- NULL
    ids <- NULL
    resource <- NULL
    result <- fetchCellbase(file=NULL,host=host, version=version,meta=meta, species=species, categ=categ, subcateg=subcateg,
                            ids=ids, resource=resource, filters=NULL,...)
    data <- lapply(result, function(x)as.data.frame(x))
    data <- rbind.pages(data)
    data <- CellBaseResponse(cbData=data)
    return(data)
})
