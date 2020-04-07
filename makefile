# Author Chedly Kastally <ckastall@gmail.com>
# Version 0.1
# Copyright (C) 2020 Chedly Kastally <ckastall@gmail.com>
# Modified On 2020-04-07 20:18
# Created  2020-04-07 20:05

source  = $(shell find . -name "*.Rmd")
results = $(source:.Rmd=.pdf)

all: \
    $(result_dir) \
    $(results)

clean:
	rm -frv $(results)

.PHONY: clean all

# directory setup
$(result_dir):
	mkdir -p $@

# main

%.pdf: %.Rmd
	Rscript -e 'library("rmarkdown"); render("$<", "beamer_presentation");'

