target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib
documentation = README.md

EDIT = vi

.PHONY: commit vi spell readme notes quotes diss

#
# Note: make requires that we set the value of a variable OUTSIDE any rules.
#
timestamp = `date +%Y%m%d.%H%M`

target:
	@echo "This is the source of the Consolidated BibTeX file.  Make changes here."

commit:
	git add .
	git commit -am "commit from Makefile $(timestamp)"
	git pull --rebase
	git push

vi:
	$(EDIT) $(source)

readme:
	$(EDIT) $(documentation)

spell:
	aspell --lang=en check $(documentation)

notes:
	(cd ../notes/ && make notes)

quotes:
	(cd ../notes/ && make notes)

diss:
	(cd ../dissertation/ && make vi)

