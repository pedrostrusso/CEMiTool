% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cemitool.R
\name{cemitool}
\alias{cemitool}
\title{Full gene co-expression analysis}
\usage{
cemitool(expr, annot, gmt, interactions, filter = TRUE, filter_pval = 0.1,
  apply_vst = FALSE, n_genes, cor_method = c("pearson", "spearman"),
  cor_function = "cor", network_type = "unsigned", tom_type = "signed",
  sample_name_column = "SampleName", class_column = "Class",
  merge_similar = TRUE, ora_pval = 0.05, min_ngen = 30,
  diss_thresh = 0.8, plot = FALSE, directed = FALSE, verbose = FALSE)
}
\arguments{
\item{expr}{Gene expression \code{data.frame}.}

\item{annot}{Sample annotation \code{data.frame}.}

\item{gmt}{A data.frame containing two columns, one with pathways and one with genes}

\item{interactions}{A data.frame containing two columns with gene names.}

\item{filter}{Logical. If TRUE, will filter expression data.}

\item{filter_pval}{P-value threshold for filtering.Default \code{0.1}.}

\item{apply_vst}{Logical. If TRUE, will apply Variance Stabilizing Transform before filtering genes.
Currently ignored if parameter \code{filter} is FALSE.}

\item{n_genes}{Number of genes left after filtering.}

\item{cor_method}{A character string indicating which correlation coefficient is
to be computed. One of \code{"pearson"} or \code{"spearman"}.
Default is \code{"pearson"}.}

\item{cor_function}{A character string indicating the correlation function to be used. Supported functions are
currently 'cor' and 'bicor'. Default is \code{"cor"}}

\item{network_type}{A character string indicating if network type should be computed 
as \code{"signed"} or \code{"unsigned"}. Default is \code{"unsigned"}}

\item{tom_type}{A character string indicating if the TOM type should be computed 
as \code{"signed"} or \code{"unsigned"}. Default is \code{"signed"}}

\item{sample_name_column}{A character string indicating the sample column
name of the annotation table.}

\item{class_column}{A character string indicating the class column name of the
annotation table.}

\item{merge_similar}{Logical. If \code{TRUE}, merge similar modules.}

\item{ora_pval}{P-value for overrepresentation analysis. Default \code{0.05}.}

\item{min_ngen}{Minimal number of genes per submodule. Default \code{30}.}

\item{diss_thresh}{Module merging correlation threshold for eigengene similarity.
Default \code{0.8}.}

\item{plot}{Logical. If \code{TRUE}, plots all figures.}

\item{directed}{Logical. If \code{TRUE}, the igraph objects in interactions slot will be directed.}

\item{verbose}{Logical. If \code{TRUE}, reports analysis steps.}
}
\value{
Object of class \code{CEMiTool}
}
\description{
Defines co-expression modules and functionally characterizes
each one of them.
}
\examples{
\dontrun{
# Get example expression data
data(expr)
# Run CEMiTool analyses
cem <- cemitool(expr=expr)
# Run CEMiTool applying Variance Stabilizing Transformation to data
cem <- cemitool(expr=expr, apply_vst=TRUE)
# Run CEMiTool with additional processing messages
cem <- cemitool(expr=expr, verbose=TRUE)

# Run full CEMiTool analysis
## Get example sample annotation data
data(sample_annot)
## Read example pathways file
gmt_fname <- system.file("extdata", "pathways.gmt", package = "CEMiTool")
gmt_in <- read_gmt(gmt_fname)
## Get example interactions file
int_df <- read.delim(system.file("extdata", "interactions.tsv", package = "CEMiTool"))
## Run CEMiTool
cem <- cemitool(expr=expr, annot=sample_annot, gmt=gmt_in, 
    interactions=int_df, verbose=TRUE, plot=TRUE)
}
}
