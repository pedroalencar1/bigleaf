% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/surface_conditions.r
\name{surface.CO2}
\alias{surface.CO2}
\title{CO2 Concentration at the Canopy Surface}
\usage{
surface.CO2(Ca, NEE, Ga_CO2, Tair, pressure)
}
\arguments{
\item{Ca}{Atmospheric CO2 concentration (umol mol-1)}

\item{NEE}{Net ecosystem exchange (umol CO2 m-2 s-1)}

\item{Ga_CO2}{Aerodynamic conductance for CO2 (m s-1)}

\item{Tair}{Air temperature (degC)}

\item{pressure}{Atmospheric pressure (kPa)}
}
\value{
\item{Ca_surf -}{CO2 concentration at the canopy surface (umol mol-1)}
}
\description{
the CO2 concentration at the canopy surface derived from net ecosystem
             CO2 exchange and measured atmospheric CO2 concentration.
}
\details{
CO2 concentration at the canopy surface is calculated as:

         \deqn{Ca_surf = Ca + NEE / Ga_CO2}
       
       Note that this equation can be used for any gas measured (with NEE
       replaced by the net exchange of the respective gas and Ga_CO2 by the Ga of 
       that gas).
}
\note{
the following sign convention is employed: negative values of NEE denote
      net CO2 uptake by the ecosystem.
}
\examples{
surface.CO2(Ca=400,NEE=-30,Ga_CO2=0.05,Tair=25,pressure=100)

}
