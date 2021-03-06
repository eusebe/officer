% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docx_add_chunk.R
\name{slip_in_text}
\alias{slip_in_text}
\title{append text}
\usage{
slip_in_text(x, str, style = NULL, pos = "after")
}
\arguments{
\item{x}{a docx device}

\item{str}{text}

\item{style}{text style}

\item{pos}{where to add the new element relative to the cursor,
"after" or "before".}
}
\description{
append text into a paragraph of a docx object
}
\examples{
library(magrittr)
x <- read_docx() \%>\%
  body_add_par("Hello ", style = "Normal") \%>\%
  slip_in_text("world", style = "strong") \%>\%
  slip_in_text("Message is", style = "strong", pos = "before")

if( has_zip() )
  print(x, target = "append_run.docx")
}
