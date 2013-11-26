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

include common.mk

