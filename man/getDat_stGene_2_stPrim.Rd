\name{getDat_stGene_2_stPrim}
\alias{getDat_stGene_2_stPrim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get the subset of dataframe with rows related to standard gene and the primer pair that designed for the standard gene
%%  ~~function to do ... ~~
}
\description{
In the ht-qPCR results, one standard example gene with different dilution folds (from 1 to 6) and potential replicates is supposed to be amplified by a previously designed primer pair.

This function takes user input dataframe, standard gene sample, the primer pair that is specific to the standard gene, and returns a subset dataframe with rows related to standard gene and the primer pair that designed for the standard gene.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
getDat_stGene_2_stPrim(dat, startSample, startAssay)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
  A dataframe that contains PCR results with requested format
%%     ~~Describe \code{dat} here~~
}
  \item{startSample}{
  A string which is a substring that starts from the leftmost character of sample gene name. This string should differentiate the user preferred sample gene name with others
%%     ~~Describe \code{startSample} here~~
}
  \item{startAssay}{
  A string which is a substring that starts from the leftmost character of assay primer name. This string should differentiate the user preferred assay primer name with others
%%     ~~Describe \code{startAssay} here~~
}
}
\details{
See more details at <https://github.com/jialiu232/evaluatePCR>
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
Jia Liu
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
test009 <- getDat_stGene_2_stPrim(f, "amoA", "amoA.009")

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
