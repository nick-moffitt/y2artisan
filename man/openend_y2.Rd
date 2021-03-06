% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/openend_y2.R
\name{openend_y2}
\alias{openend_y2}
\title{Look at the frequencies of each word in an open end question}
\usage{
openend_y2(dataset, variable, top_x = 50)
}
\arguments{
\item{dataset}{no default. Usually piped in from your main dataset}

\item{variable}{The name of the openended variable from your dataset you want to look at}

\item{top_x}{DEFAULT = 50; Shows the top X most commonly mentioned words you want to see from the open-end}
}
\description{
Breaks down an open ended question on spaces, giving you the frequencies of each word mentioned
}
\examples{
responses <- tibble::tibble(
  var1 = c(
    'I like to talk about dogs',
    'Dogs are cool but cats are aight too',
    'I prefer dogs over cats',
    "My dog's collars are always too tight",
    'One last sentence about dogs',
    'Cats collars are typically cooler than dogs'
  )
)

responses \%>\% openend_y2(var1)
}
\keyword{end}
\keyword{freqs}
\keyword{frequencies}
\keyword{open}
\keyword{openend}
