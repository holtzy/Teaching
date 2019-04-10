

# -----
# BUILD BASIC TP
# -----

# Run the basic TP .rmd document with NO correction. No modif to do.
R
library(rmarkdown)
rmarkdown::render("Ggplot2_basicTP.Rmd" ) 
q("no")

# Run the basic TP .rmd document WITH correction
cat Ggplot2_basicTP.Rmd | sed 's/class.source="Question",echo=TRUE/class.source="Question",echo=FALSE/' | sed 's/,fig.show="hide",echo=FALSE//' > tmp.Rmd
R
library(rmarkdown)
rmarkdown::render("tmp.Rmd" ) 
q("no")
mv tmp.html Ggplot2_basicTP_correction.html
rm tmp.Rmd








# -----
# BUILD ADVANCED TP
# -----

# Run the basic TP .rmd document with NO correction. No modif to do.
R
library(rmarkdown)
rmarkdown::render("Ggplot2_advancedTP.Rmd" ) 
q("no")

# Run the basic TP .rmd document WITH correction
cat Ggplot2_advancedTP.Rmd | sed 's/class.source="Question",echo=TRUE/class.source="Question",echo=FALSE/' | sed 's/,fig.show="hide",echo=FALSE//' > tmp.Rmd
R
library(rmarkdown)
rmarkdown::render("tmp.Rmd" ) 
q("no")
mv tmp.html Ggplot2_advancedTP_correction.html
rm tmp.Rmd














