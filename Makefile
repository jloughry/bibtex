target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib

target:
	@echo "This is the source of the Consolidated BibTeX file.  Make changes here."

vi:
	vi $(source)

