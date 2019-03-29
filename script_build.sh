

# -----
# BUILD BASIC TP
# -----

# Run the basic TP .rmd document with NO correction. No modif to do.
R
library(rmarkdown)
rmarkdown::render("Ggplot2_basicTP.Rmd" ) 
q("no")

# Run the basic TP .rmd document WITH correction
cat Ggplot2_basicTP.Rmd | sed 's/class.source="Question",echo=TRUE/class.source="Question",echo=FALSE/' | sed 's/eval=FALSE,echo=FALSE/eval=TRUE,echo=TRUE/' > tmp.Rmd
R
library(rmarkdown)
rmarkdown::render("tmp.Rmd" ) 
q("no")
mv tmp.html Ggplot2_basicTP_correction.html














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











