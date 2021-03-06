% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blobness3D.R
\name{blobness3D}
\alias{blobness3D}
\title{3D Volume Blobness}
\usage{
blobness3D(image, mask, radius = 5, color = "dark", parallel = FALSE,
  cores = 2)
}
\arguments{
\item{image}{a 3D array or image of class \code{\link{nifti}}}

\item{mask}{an array or \code{\link{nifti}} mask of voxels for which vesselness will be calculated,
with more selective masking improving speed significantly.
Note that mask should be in the same space as the image volume}

\item{radius}{an integer specifying radius of the neighborhood (in voxels) for which the blobness should be calculated.
Note that this value essentially serves as the scale of the blob objects}

\item{color}{a string specifying whether blobs will appear darker ("dark") or brighter ("bright") than their surroundings}

\item{parallel}{is a logical value that indicates whether the user's computer
is Linux or Unix (i.e. macOS), and should run the code in parallel}

\item{cores}{if parallel = TRUE, cores is an integer value that indicates how many cores
the function should be run on}
}
\value{
A 3D volume of the volume ratio blobness scores.
}
\description{
This function returns a blobness map for a 3D array or NIfTI volume. This blobness measure is based on the volume ratio described by Pierpaoli and Basser (1996).
}
\examples{
\dontrun{
library(neurobase)
flair <- readnii('path/to/epi')
mask <- flair!=0
brightspots <- blobness3D(image = flair, mask = mask, radius = 5,
                      color = "bright", parallel = TRUE, cores = 4) }
}
\references{
C. Pierpaoli, P.J. Basser (1996). Toward a Quantitative Assessment of Diffusion Anisotropy. Magnetic Resonance in Medicine. 36, pp. 893-906.
}
