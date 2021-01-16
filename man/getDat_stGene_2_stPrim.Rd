\name{getDat_stGene_2_stPrim}
\alias{getDat_stGene_2_stPrim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get standard gene and the primer pair designed fro the standard gene
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
getDat_stGene_2_stPrim(dat, startSample, startAssay)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
%%     ~~Describe \code{dat} here~~
}
  \item{startSample}{
%%     ~~Describe \code{startSample} here~~
}
  \item{startAssay}{
%%     ~~Describe \code{startAssay} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (dat, startSample, startAssay)
{
    stData <- dat \%>\% filter(startsWith(Sample, startSample)) \%>\%
        filter(startsWith(Assay, startAssay)) \%>\% mutate(Gene_copy = case_when(grepl("^-1",
        Sample, fixed = TRUE) ~ 1100000, grepl("^-2", Sample,
        fixed = TRUE) ~ 110000, grepl("^-3", Sample, fixed = TRUE) ~
        11000, grepl("^-4", Sample, fixed = TRUE) ~ 1100, grepl("^-5",
        Sample, fixed = TRUE) ~ 110, grepl("^-6", Sample, fixed = TRUE) ~
        11), Concentration_cate = case_when(grepl("^-1", Sample,
        fixed = TRUE) ~ "1st", grepl("^-2", Sample, fixed = TRUE) ~
        "2nd", grepl("^-3", Sample, fixed = TRUE) ~ "3rd", grepl("^-4",
        Sample, fixed = TRUE) ~ "4th", grepl("^-5", Sample, fixed = TRUE) ~
        "5th", grepl("^-6", Sample, fixed = TRUE) ~ "6th"))
    return(stData)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
