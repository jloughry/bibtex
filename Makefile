target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib

#
# Note: make requires that we set the value of a variable OUTSIDE any rules.
#
timestamp = `date +%Y%m%d.%H%M`

target:
	@echo "This is the source of the Consolidated BibTeX file.  Make changes here."

commit:
	git add .
	git commit -am "commit from Makefile $(timestamp)"

sync:
	git pull --rebase
	git push

vi:
	vi $(source)

notes:
	(cd ../notes/ && make notes)

quotes:
	(cd ../notes/ && make notes)

diss:
	(cd ../dissertation/ && make vi)

