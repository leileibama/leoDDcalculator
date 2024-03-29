# leoDDcalculator

leoDDcalculator, a package calculating the values of mdd and ndd of texts in a folder

## Description

A package calculating the values of mdd and ndd of texts in a folder (https://github.com/leileibama/leoDDcalculator)

Based on udpipe (https://github.com/bnosac/udpipe). 

Dependency distance (DD) refers to the linear distance of the pair of words that are in a dependency relation or are syntactically related. 

Mean dependency distance (MDD) is the mean value of DDs of a sentence or a passage. 

Refer to Liu, Xu, and Liang (2017) for a detailed review of DD and mdd. 

Liu, H., Xu, C., & Liang, J. (2017). Dependency distance: A new perspective on syntactic patterns in natural languages. Physics of Life Reviews, 21, 171–193. https://doi.org/10.1016/j.plrev.2017.03.002

Lei and Jockers (2018) proposed a new measure, i.e., normalized dependency distance (NDD) to calculate DD. See Lei and Jockers (2018) for the details.  

Lei, L., & Jockers, M. L. (2018). Normalized Dependency Distance: Proposing a New Measure. Journal of Quantitative Linguistics, 1–18. https://doi.org/10.1080/09296174.2018.1504615

### Note
Note that any syntactic parser or dependency parser, including the one leoDDcalculator uses, is not 100% accurate. 

You may need to manually check the parsing results before you use it in your research. Refer to Section 2.2 of Lei and Wen (2019) for a solution. 

##
## Developer

Dr. Leo Lei Lei, Professor of Applied Linguistics, Shanghai Jiao Tong University, China

Contact: leileicn@qq.com

##
### Please kindly cite the following articles if you use leoDDcalculator in your research:

Lei, L., & Wen, J. (2019). Is dependency distance experiencing a process of minimization? A diachronic study based on the State of the Union addresses. Lingua, S002438411930511X. https://doi.org/10.1016/j.lingua.2019.102762

Lei, L., & Jockers, M. L. (2018). Normalized Dependency Distance: Proposing a New Measure. Journal of Quantitative Linguistics, 1–18. https://doi.org/10.1080/09296174.2018.1504615

##
The package is based on udpipe.

Refer to the following page for udpipe, the R package

https://github.com/bnosac/udpipe


##
## Installation

#install.packages("devtools")

library(devtools) 

install_github("leileibama/leoDDcalculator")

##
## Examples

#use the function mdd_ndd_calculate()

#with default folders

#or set your own language_model_folder and texts_folder


#
#put the language model in the language_model_folder

#put your to-be-processed text files in the texts_folder

#and run the function

#
#a new folder named "mytexts_results_dd" will be created

#The results in the new folder include:

#_raw_dependencies.csv files for each to-be-processed file, with detailed information such as sentence id, token, token_head, dep_relation, token_id, and head_token_id

#A "0mdd_ndd_results.csv" file which reports on the file id, mdd, and ndd for each to-be-processed file

#
library(dplyr)

library(readr)

library(udpipe)

library(leoDDcalculator)

mdd_ndd_calculate(language_model_folder = 'C:/',
                 texts_folder = 'C:/mytexts/')


##
### IMPORTANT

#before use the package and the function

#read the following

#1. install the following packages

#2. download the language model

#3. concerning your to-be-processed text files


##
### 1. install the following packages

#install Rtools for your Windows OS: https://cran.r-project.org/bin/windows/Rtools/

#install the package "udpipe"

#install.packages("udpipe")

#install.packages('dplyr')

#install.packages('readr')

#install.packages('devtools')

#install.packages('data.table')  #needed for 'udpipe'

#install.packages('chron')   #needed for 'udpipe'

#install_github("bnosac/udpipe", build_vignettes = TRUE)

##
### 2. download the language model

#download the English language model

#english-ewt-ud-2.4-190531.udpipe

#from https://github.com/jwijffels/udpipe.models.ud.2.4/blob/master/inst/udpipe-ud-2.4-190531/english-ewt-ud-2.4-190531.udpipe

#and move it to the C disk root foloder "C:/"  (the default language model foder)

#'C:/english-ewt-ud-2.4-190531.udpipe'

##
### 3. concerning your to-be-processed text files

#your to-be-processed text files should be text files

#put your to-be-processed text files in the folder 'C:/mytexts/' (the default texts_folder)
