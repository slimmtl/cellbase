% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R
\name{cbSpeciesClient}
\alias{cbSpeciesClient}
\title{A method for getting the avaiable species from the cellbase web services. Please, for details on possible values for the 
parameters  and  additional filters of this function refer to https://github.com/opencb/cellbase/wiki and the RESTful 
http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/}
\usage{
cbSpeciesClient(object, ...)
}
\arguments{
\item{object}{an object of class CellBaseR}

\item{...}{any extra arguments}

\item{resource}{a character vector to specify the resource to be queried}

\item{filters}{a object of class CellBaseParam specifying additional filters for the query}
}
\value{
an object of class CellBaseResponse which holds a dataframe with the results of the query
}
\description{
A method for getting the avaiable species from the cellbase web services. Please, for details on possible values for the 
parameters  and  additional filters of this function refer to https://github.com/opencb/cellbase/wiki and the RESTful 
http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/
}
\examples{
   library(cellbaseR)
   cb <- CellBaseR()
   res <- cbSpeciesClient(object=cb)
}

