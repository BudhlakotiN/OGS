\name{OGS.meanp}
\alias{OGS.meanp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Identifying outlier using mean p based meta-analysis method
}
\description{
  Identifies outlier in genomics data by combining various LASSO diagnostic followed by meta- analysis using mean p method.
}
\usage{
  OGS.meanp(X,Y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
    X	is a design matrix of marker genotype of size n×p where n are no of
    Individuals under study (i.e. genotype, lines) and p are no of markers

  }
  \item{Y}{Y is a vector of response/individuals of size n×1}
}

\details{
  This function first combines various LAASO diagnostic proposed for high dimensional regression i.e. df-model, df-lambda, df-regpath and df-cvpath and produce a single p-value for each individuals/observation using mean p method. Using a suitable p-value cut-off (i.e. .01 or .05), outlier can be identified.
}
\value{
  $p-values	  lists p-value for each observation/individuals/lines
}
\references{
  Rajaratnam, B., Roberts, S., Sparks, D. & Yu, H. Influence Diagnostics for High-Dimensional Lasso Regression. Journal of Computational and Graphical Statistics, 1-14 (2019).

  Becker BJ (1994). “Combining significance levels.” In Cooper H, Hedges LV (eds.), A handbook of research synthesis, 215–230. Russell Sage, New York.

  Edgington ES (1972). “A normal curve method for combining probability values from independent experiments.” Journal of Psychology, 82, 85–89.

  Rosenthal R (1978). “Combining results of independent studies.” Psychological Bulletin, 85, 185–193.

}


\examples{
  library(STGS)
  data(wheat_data)
  X<-wheat_data[,1:100]
  Y<-as.data.frame(wheat_data[,101])
  OGS.meanp(X,Y)
}
