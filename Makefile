target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib

.PHONY: commit vi spell readme notes quotes diss

$(target):
	@echo "This is the source of the Consolidated BibTeX file.  Make changes here."

clean:
	@echo "\"make clean\" doesn't do anything here."

vi:
	vi $(source)

spell:
	aspell --lang=en check README.md

readme:
	vi README.md

commit:
	make clean
	git add .
	git commit -am "commit from Makefile `date +%Y%m%d.%H%M`"
	make sync

sync:
	git pull --rebase
	git push

notes:
	(cd ../notes && make vi)

quotes:
	(cd ../notes && make quotes)

cv:
	(cd ../CV && make vi)

#
# Do not include the common.mk here; it can cause an infinite loop.
#

