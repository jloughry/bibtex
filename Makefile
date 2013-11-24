target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib

.PHONY: commit vi spell readme notes quotes diss

include ../Makefiles/git1.mk

target:
	@echo "This is the source of the Consolidated BibTeX file.  Make changes here."

include ../Makefiles/git2.mk

clean:
	@echo "\"make clean\" doesn't do anything here."

vi:
	vi $(source)

spell:
	aspell --lang=en check $(documentation)

notes:
	(cd ../notes/ && make notes)

quotes:
	(cd ../notes/ && make notes)

diss:
	(cd ../dissertation/ && make vi)

