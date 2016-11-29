target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib

editor_cmd = /usr/bin/vi

all:: $(target)

$(target):
	@echo "This is the source of the Consolidated BibTeX file.  Make changes here."

vi:
	$(editor_cmd) $(source)

include common.mk

