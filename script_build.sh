

# -----
# BUILD ADVANCED TP
# -----

# Put both in none
cat Ggplot2_advancedTP.Rmd | sed 's/.Question { display: block/.Question { display: none/' | sed 's/.Correction { display: block/.Correction { display: none/' > tmp
mv tmp Ggplot2_advancedTP.Rmd


# Run the advanced TP .rmd document with corrections
cat Ggplot2_advancedTP.Rmd | sed 's/.Correction { display: none/.Correction { display: block/' > tmp
mv tmp Ggplot2_advancedTP.Rmd
R
library(rmarkdown)
rmarkdown::render("Ggplot2_advancedTP.Rmd" ) 
q("no")
mv Ggplot2_advancedTP.html Ggplot2_advancedTP_correction.html


# Run the advanced TP .rmd document with questions
cat Ggplot2_advancedTP.Rmd | sed 's/.Correction { display: block/.Correction { display: none/' | sed 's/.Question { display: none/.Question { display: block/' > tmp
mv tmp Ggplot2_advancedTP.Rmd
R
library(rmarkdown)
rmarkdown::render("Ggplot2_advancedTP.Rmd" ) 
q("no")

# Put both in none
cat Ggplot2_advancedTP.Rmd | sed 's/.Question { display: block/.Question { display: none/' > tmp
mv tmp Ggplot2_advancedTP.Rmd








# -----
# BUILD BASIC TP
# -----

# Put both in none
cat Ggplot2_basicTP.Rmd | sed 's/.Question { display: block/.Question { display: none/' | sed 's/.Correction { display: block/.Correction { display: none/' > tmp
mv tmp Ggplot2_basicTP.Rmd


# Run the basic TP .rmd document with corrections
cat Ggplot2_basicTP.Rmd | sed 's/.Correction { display: none/.Correction { display: block/' > tmp
mv tmp Ggplot2_basicTP.Rmd
R
library(rmarkdown)
rmarkdown::render("Ggplot2_basicTP.Rmd" ) 
q("no")
mv Ggplot2_basicTP.html Ggplot2_basicTP_correction.html


# Run the basic TP .rmd document with questions
cat Ggplot2_basicTP.Rmd | sed 's/.Correction { display: block/.Correction { display: none/' | sed 's/.Question { display: none/.Question { display: block/' > tmp
mv tmp Ggplot2_basicTP.Rmd
R
library(rmarkdown)
rmarkdown::render("Ggplot2_basicTP.Rmd" ) 
q("no")

# Put both in none
cat Ggplot2_basicTP.Rmd | sed 's/.Question { display: block/.Question { display: none/' > tmp
mv tmp Ggplot2_basicTP.Rmd



