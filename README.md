# Population genetic Classes

This is a set of classes around topics of populations genetics targeting
students of population genetics at various levels.

These have notably been given during the class _DNA analysis in population
genetics course_ in 2020.

These classes are organized around R and show how it can be used to analyze
genetic data using various packages for population genetics, most notably:

- coala
- adegenet
- ape
- learnPopGen
- pegas
- vcfR

The classes are given here in Rmarkdown, a format that can be easily converted
to various format. However, the files provided here are built assuming they
would be converted using pandoc to the pdf format using latex and beamer.

# Installation

To easily compile the Rmarkdown documents (.Rmd) you can use the R package
[rmarkdown](https://github.com/rstudio/rmarkdown). The following
instruction require that you have that package installed in your system.

```{bash}

# clone the repository

git clone https://github.com/ckastall/population_genetics_class

# compile all the classes

make

# Or the one you are interested in, eg coalescence_basic.Rmd

Rscript -e 'library("rmarkdown"); render("classes/coalescence_basic/coalescence_basic.Rmd", "beamer_presentation");'

```

