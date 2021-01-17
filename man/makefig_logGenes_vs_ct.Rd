\name{makefig_logGenes_vs_ct}
\alias{makefig_logGenes_vs_ct}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Make figure of log(gene_copies) vs Ct values
%%  ~~function to do ... ~~
}
\description{
This function takes the filtered PCR result dataframe which contains rows of standard sample gene (with 6 dilution folds and potential replicates) and the corresponding primer pair for the standard gene as input, and visualize the log(gene_copies) versus Ct values.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
makefig_logGenes_vs_ct(df_filt)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df_filt}{
  A filtered dataframe which contains rows of standard sample gene (with 6 dilution folds and potential replicates) and the corresponding primer pair for the standard gene
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
makefig_logGenes_vs_ct(test009_filt)

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
