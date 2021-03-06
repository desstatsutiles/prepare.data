% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_load.R
\name{load_datatable}
\alias{load_datatable}
\title{A wrapper around data.table fread and nothing else}
\usage{
load_datatable(source, double = T, ...)
}
\arguments{
\item{source}{The path to the file to load}

\item{double}{Should we load twice to make sure the types are ok (def : T)}
}
\description{
This function allows you to load a csv table fast
}
\examples{
load_data("data/kaggle_titanic_train.csv", T)
}
\keyword{LoadData()}
\keyword{data.table}
\keyword{fread}
\keyword{internal}
\keyword{load}
\keyword{read}
