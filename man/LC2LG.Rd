% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ExportedFuncs.R
\name{LC2LG}
\alias{LC2LG}
\title{Transformation between latent classes and latent groups}
\usage{
LC2LG(Q, sequential = FALSE, att.str = NULL)
}
\arguments{
\item{Q}{A required \eqn{J \times K} binary Q-matrix. J represents test
length and K represents the number of attributes of this test.
Entry 1 at row j and column k represents the \eqn{k^{th}} attribute
is measured by item \eqn{j}, and 0 means item \eqn{j} does not
measure attribute \eqn{k}.}

\item{sequential}{logical; whether the Q-matrix is a Qc-matrix for sequential models?}

\item{att.str}{attribute structure. See \code{GDINA} for details.}
}
\value{
An item or category by latent class matrix. In the G-DINA model,
   if item j measures \eqn{Kj} attributes, \eqn{2^K} latent classes can
   be combined into \eqn{2^{Kj}} latent groups. This matrix gives
   which latent group each of \eqn{2^K} latent classes belongs to for each item.
}
\description{
This function gives the equivalent latent classes which have the same category success
probabilities for each category or item.
}
\examples{
attributepattern(3)

q <- matrix(scan(text = "0 1 0 1 0 1 1 1 0"),ncol = 3)
q
LC2LG(Q = q)

}
\author{
{Wenchao Ma, The University of Alabama, \email{wenchao.ma@ua.edu} \cr Jimmy de la Torre, The University of Hong Kong}
}
