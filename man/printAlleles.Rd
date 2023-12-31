\name{printAlleles}
\alias{printAlleles}
\title{Method "printAlleles"}
\description{
    Prints out alleles (MGI IDs or temporary IDs if the MGI is not assigned 
    yet and symbols) 
    that are processed for a specified combination of parameter, procedure, 
    pipeline and phenotyping center. 
    Temporary allele ID starts with "NULL".
}
\usage{
    printAlleles(PhenCenterName=NULL,PipelineID=NULL,ProcedureID=NULL,
    ParameterID=NULL,StrainID=NULL,n=NULL)
}
\arguments{
    \item{PhenCenterName}{IMPC phenotyping center; mandatory argument}
    \item{PipelineID}{IMPC pipeline ID; mandatory argument}
    \item{ProcedureID}{IMPC procedure ID; mandatory argument}
    \item{ParameterID}{IMPC parameter ID; mandatory argument}
    \item{StrainID}{IMPC strain ID; optional argument}
    \item{n}{print only first n alleles; optional argument}
}
\value{
    Returns the character containing IMPC alleles (IDs and names of alleles) 
}
\author{Natalja Kurbatova, Jeremy Mason}
\examples{
    printAlleles("RBRC","IMPC_001","IMPC_GRS_001","IMPC_GRS_003_001", n = 5)
}
