\name{exclude_big_ct}
\alias{exclude_big_ct}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Exclude rows with big Ct values at low concentrations to make values fit in a log(gene_copies) vs ct figure
%%  ~~function to do ... ~~
}
\description{
Before visualizing the gene_copies vs ct values, you may want to exclude the sample points at some lower concentrations where Ct values are extremely big. This function will do that with a user defined dataframe and a dilution fold. The output will be a dataframe with the same format as input and excluded the rows at user defined dilution fold.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
exclude_big_ct(stData, dilute_fold)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{stData}{
  A dataframe with required format. (See readme for details)
%%     ~~Describe \code{x} here~~
}
  \item{dilute_fold}{
  A string with the format "^-n", where n can vary from 1 to 6 depends on the dilution fold you want to exclude
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
exclude_big_ct(test16, "^-6")
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
