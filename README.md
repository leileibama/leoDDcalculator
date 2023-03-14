# leoDDcalculator

leoDDcalculator, a package calculating the values of mean dependency distance (MDD) and normalized dependency distance (NDD) of texts in a folder.

## Description

Dependency distance (DD) refers to the linear distance of the pair of words that are in a dependency relation or are syntactically related. **Mean dependency distance** (MDD) is the mean value of DDs of a sentence or a passage. Refer to Liu, Xu, and Liang (2017) for a detailed review of DD and MDD. Lei and Jockers (2018) proposed a new measure, i.e., **normalized dependency distance** (NDD) to calculate DD. See Lei and Jockers (2018) for the details.

## Install

### Install RTools

Windows users need to install [RTools](https://cran.r-project.org/bin/windows/Rtools/). Note that you should choose the version of RTools that corresponds with the version of R installed on your system.

### Install leoDDcalculator

Run the following command to install leoDDcalculator and its dependencies.

```R
install.packages('devtools')
devtools::install_github('leileibama/leoDDcalculator')

install.packages(c('data.table', 'chron', 'udpipe', 'dplyr', 'readr'))
devtools::install_github('bnosac/udpipe', build_vignettes = TRUE)
```

### Download the language model

leoDDcalculator is based on [udpipe](https://github.com/bnosac/udpipe). Download the English language model [english-ewt-ud-2.4-190531.udpipe](https://github.com/jwijffels/udpipe.models.ud.2.4/blob/master/inst/udpipe-ud-2.4-190531/english-ewt-ud-2.4-190531.udpipe) and move it to the C disk root foloder `C:/`  (the default language model foder).

## Usage

Use the function `mdd_ndd_calculate()` with default folders or set your own `language_model_folder` and `texts_folder`.

Put the language model in the `language_model_folder` (`C:/` by default). Put your to-be-processed text files in the `texts_folder` (`C:/mytexts/` by default) and run the function.
Note that within the `texts_folder` there should only be plain text files and no other types of files should be present.

```R
library(dplyr)
library(readr)
library(udpipe)
library(leoDDcalculator)

mdd_ndd_calculate(language_model_folder = 'C:/',
                  texts_folder = 'C:/mytexts/')
```

A new folder named `mytexts_results_dd` will be created. The results in the new folder include:
+ `*_raw_dependencies.csv` files for each to-be-processed file, with detailed information such as sid (sentence id), token, token_head, dep_relation, token_id, and head_token_id.
+ A `0mdd_ndd_results.csv` file which reports on the file id, mdd, and ndd for each to-be-processed file.

Note that any syntactic parser or dependency parser, including the one leoDDcalculator uses, is not 100% accurate. You may need to manually check the parsing results before you use it in your research. Refer to Section 2.2 of Lei and Wen (2019) for a solution.

## Citing

Please kindly cite the following articles if you use leoDDcalculator in your research:

+ Lei, L., & Wen, J. (2019). Is dependency distance experiencing a process of minimization? A diachronic study based on the State of the Union addresses. Lingua, S002438411930511X. https://doi.org/10.1016/j.lingua.2019.102762

+ Lei, L., & Jockers, M. L. (2018). Normalized Dependency Distance: Proposing a New Measure. Journal of Quantitative Linguistics, 1–18. https://doi.org/10.1080/09296174.2018.1504615

## Contact

leileicn@qq.com - Dr. Leo Lei Lei, Professor of Applied Linguistics, Shanghai International Studies University (SISU), China
