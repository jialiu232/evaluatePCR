\name{getDat_gene_2_topnPrim}
\alias{getDat_gene_2_topnPrim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get subset dataframe for the top n best primers for the given Sample gene
%%  ~~function to do ... ~~
}
\description{
In the ht-qPCR results, one example gene with different dilution folds (from 1 to 6) and potential replicates may be amplified by up to 96 different primer pairs. This function takes user input dataframe, and returns a subset dataframe with rows that contains the top n user defined primers (with smallest Ct values) that amplify the user defined gene sample.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
getDat_gene_2_topnPrim(dat, startSample, top_n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
  A dataframe that contains PCR results with requested format
%%     ~~Describe \code{x} here~~
}
  \item{startSample}{
  A string which is a substring that starts from the leftmost character of sample gene name. This string should differentiate the user preferred sample gene name with others
%%     ~~Describe \code{x} here~~
}
  \item{top_n}{
  A non-negative integer
%%     ~~Describe \code{x} here~~
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
tes_amo <- getDat_gene_2_topnPrim(f, "amoA", 10)

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
