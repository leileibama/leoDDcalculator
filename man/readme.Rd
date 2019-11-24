\name{leoDDcalculator}
\alias{leoDDcalculator}
\title{leoDDcalculator, a package calculating mdd and ndd of texts in a folder}
\usage{
}
\description{
# leoDDcalculator
#
# This is the function named dd_calculate()
# which calculate the values of mdd and ndd of the English texts in a folder
#


#########
# IMPORTANT

#before use the package and the function

#read the following

#1. install the following packages

#2. download the language model

#3. concerning your to-be-processed text files

# 1. install the following packages
#install Rtools for your Windows OS: https://cran.r-project.org/bin/windows/Rtools/

#install the package "udpipe"

#install.packages("udpipe")

#install.packages('dplyr')

#install.packages('readr')

#install.packages('devtools')

#install.packages('data.table') #needed for 'udpipe'

#install.packages('chron') #needed for 'udpipe'

#install_github("bnosac/udpipe", build_vignettes = TRUE)

# 2. download the language model
#download the English language model

#english-ewt-ud-2.4-190531.udpipe

#from https://github.com/jwijffels/udpipe.models.ud.2.4/blob/master/inst/udpipe-ud-2.4-190531/english-ewt-ud-2.4-190531.udpipe

#and move it to the C disk root foloder "C:/" (the default language model foder)

#'C:/english-ewt-ud-2.4-190531.udpipe'

# 3. concerning your to-be-processed text files
#your to-be-processed text files should be text files

#put your to-be-processed text files in the folder 'C:/mytexts/' (the default texts_folder)

leoDDcalculator, a package calculating mdd and ndd of texts in a folder
}
\examples{

mdd_ndd_calculate()

# returns a .csv file "0mdd_ndd_results.csv"
# that contains the values of mdd and ndd of each file in the folder
}
