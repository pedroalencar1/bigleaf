% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unit_conversions.r
\name{Rg.to.PPFD}
\alias{Rg.to.PPFD}
\alias{PPFD.to.Rg}
\title{Conversions between Global Radiation and Photosynthetic Photon Flux Density}
\usage{
Rg.to.PPFD(Rg, J_to_mol = 4.6, frac_PAR = 0.5)

PPFD.to.Rg(PPFD, J_to_mol = 4.6, frac_PAR = 0.5)
}
\arguments{
\item{Rg}{Global radiation = incoming short-wave radiation at the surface (W m-2)}

\item{J_to_mol}{Conversion factor from J m-2 s-1 (= W m-2) to umol (quanta) m-2 s-1}

\item{frac_PAR}{Fraction of incoming solar irradiance that is photosynthetically
active radiation (PAR); defaults to 0.5}

\item{PPFD}{Photosynthetic photon flux density (umol m-2 s-1)}
}
\description{
Converts radiation from W m-2 to umol m-2 s-1 and vice versa.
}
\details{
The conversion is given by:

 \deqn{PPFD = Rg * frac_PAR * J_to_mol}

by default, the combined conversion factor (\code{frac_PAR * J_to_mol}) is 2.3
}
\examples{
# convert a measured incoming short-wave radiation of 500 Wm-2 to
# PPFD in umol m-2 s-1 and backwards
Rg.to.PPFD(500)
PPFD.to.Rg(1150)

}
