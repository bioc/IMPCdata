\name{getAlleles}
\alias{getAlleles}
\title{Method "getAlleles"}
\description{
    Returns alleles (MGI IDs or temporary IDs if the MGI ID is not assigned yet) 
    that are processed for a specified combination of parameter, procedure, 
    pipeline and phenotyping center. 
    Temporary allele ID starts with "NULL".
}
\usage{
    getAlleles(PhenCenterName=NULL,PipelineID=NULL,ProcedureID=NULL,
    ParameterID=NULL,StrainID=NULL)
}
\arguments{
    \item{PhenCenterName}{IMPC phenotyping center; mandatory argument}
    \item{PipelineID}{IMPC pipeline ID; mandatory argument}
    \item{ProcedureID}{IMPC procedure ID; mandatory argument}
    \item{ParameterID}{IMPC parameter ID; mandatory argument}
    \item{StrainID}{IMPC strain ID; optional argument}
}
\value{
    Returns the list of IMPC alleles (IDS of alleles) that are processed 
    measuring specified parameter 
    within the procedure in the pipeline run by phenotyping center.
}
\author{Natalja Kurbatova, Jeremy Mason}
\examples{
    listAlleles  <- getAlleles("RBRC","IMPC_001","IMPC_GRS_001","IMPC_GRS_003_001")
    for (alleleIndex in 1:min(length(listAlleles), 5)) {
        print(paste(listAlleles[alleleIndex],"-",
                        getName("allele_accession_id","allele_symbol",
                        listAlleles[alleleIndex])))
    }
}
