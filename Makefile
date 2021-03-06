target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib

editor_cmd = /usr/bin/vi

latex_cmd = pdflatex -shell-escape

all:: $(target)

github_level = ~/thesis/github

$(target):
	(cd $(github_level)/notes.new && make bibtex_only)

vi:
	@$(editor_cmd) +17 $(source) && echo "OK" || echo "return code from vi was $$?"

count:
	@grep "^@[a-z]" $(source) | wc -l

articles:
	@grep "^@article.*{" $(source) | wc -l

books:
	@grep "^@book.*{" $(source) | wc -l

errors:
	@egrep "^[^@%}[:space:]*]" $(source)

include common.mk

