\name{write.nexus.data}
\alias{write.nexus.data}
\title{
  Write Character Data In NEXUS Format
}
\description{
  This function writes in a file a list of sequences in the NEXUS
  format.The names of the vectors of the list are used as taxon names.
}
\usage{
write.nexus.data(x, file, format = "dna", datablock = TRUE,
                 interleaved = TRUE, charsperline = NULL,
                 gap = NULL, missing = NULL)
}
\arguments{
  \item{x}{a list of sequences each made of a single vector of mode
    character where each element is a character state (e.g. \dQuote{A},
    \dQuote{C}, ...).}
  \item{file}{a file name specified by either a variable of mode
    character, or a double-quoted string.}
  \item{format}{a character string specifying the format of the
    sequences. Two choices are possible: \code{dna}, or \code{protein},
    or any unambiguous abbreviation of these. Default is
    \dQuote{\code{dna}}.}
  \item{datablock}{a logical, if \code{TRUE} the data are written in a
    single DATA block. If \code{FALSE} data is written in TAXA and
    CHARACTER blocks. Default is \code{TRUE}.}
  \item{interleaved}{a logical, if \code{TRUE} the data is written in
    interleaved format with number of characters per line as specified
    with \code{charsperline = numerical_value}. If \code{FALSE}, data is
    written in sequential format. Default is \code{TRUE}.}
  \item{charsperline}{a numeric specifying the number of characters per
    line when used with \code{interleaved = TRUE}. Default is
    \code{80}.}
  \item{gap}{a character specifying the symbol for gap. Default is
    \dQuote{\code{-}}.}
  \item{missing}{a character specifying the symbol for missing
    data. Default is \dQuote{\code{?}}.}
}
\details{
  If the sequences have no names, then they are given \dQuote{1},
  \dQuote{2}, ..., as names in the file.

  Sequences must be all of the same length (i.e., aligned).

  Default symbols for missing data and gaps can be changed by using the
  \code{missing} and \code{gap} commands.

  Please see files \file{data.nex} and \file{taxacharacters.nex} for
  examples of output formats.
}
\value{
  None (invisible \sQuote{NULL}).
}
\references{
  Maddison, D. R., Swofford, D. L. and Maddison, W. P. (1997) NEXUS: an
  extensible file format for systematic information. \emph{Systematic
    Biology}, \bold{46}, 590--621.
}
\note{...}

\author{Johan Nylander \email{nylander@scs.fsu.edu}}
\seealso{
  \code{\link{read.nexus}},\code{\link{write.nexus}},
  \code{\link{read.nexus.data}}
}
\examples{
\dontrun{\dontshow{library(ape)}}
## Write interleaved DNA data with 100 characters per line in a DATA block
\dontrun{data("woodmouse")}
\dontrun{write.nexus.data(woodmouse, file= "woodmouse.example.nex", interleaved = TRUE, charsperline = 100)}
## Write sequential DNA data in TAXA and CHARACTERS blocks
\dontrun{data("cynipids")}
\dontrun{write.nexus.data(cynipids, file= "cynipids.example.nex", format = "protein", datablock = FALSE, interleaved = FALSE)}
\dontrun{\dontshow{unlink(c("woodmouse.example.nex", "cynipids.example.nex"))}}
}
\keyword{file}
