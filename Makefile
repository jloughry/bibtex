target = consolidated_bibtex_file

source = consolidated_bibtex_source.bib

editor_cmd = /usr/bin/vi

all:: $(target)

github_level = ~/thesis/github

$(target):
	(cd $(github_level)/notes.new && make touch && make)

vi:
	@$(editor_cmd) $(source) && echo "OK" || echo "return code from vi was $$?"

include common.mk

