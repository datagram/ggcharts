% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bar_chart.R
\name{bar_chart}
\alias{bar_chart}
\title{Easy Bar Charts}
\usage{
bar_chart(
  data,
  x,
  y,
  facet,
  ...,
  bar_color = "#1F77B4",
  sort = TRUE,
  horizontal = TRUE,
  limit = NULL
)
}
\arguments{
\item{data}{Dataset to use for the bar chart}

\item{x}{The x variable}

\item{y}{numeric. If y is missing then it will be assigned the number of records in each group of y}

\item{...}{Additional arguments passed to aes()}

\item{sort}{logical. Should the data be sorted before plotting?}

\item{horizontal}{logical. Should coord_flip() be added to the plot}

\item{limit}{integer. If a value for limit is provided only the first limit records will be displayed}
}
\description{
Easily create a bar chart
}
\examples{

library(dplyr)
data(biomedicalrevenue)
biomedicalrevenue \%>\%
  filter(year == 2018) \%>\%
  bar_chart(company, year, limit = 10)

}
\author{
Thomas Neitmann
}
